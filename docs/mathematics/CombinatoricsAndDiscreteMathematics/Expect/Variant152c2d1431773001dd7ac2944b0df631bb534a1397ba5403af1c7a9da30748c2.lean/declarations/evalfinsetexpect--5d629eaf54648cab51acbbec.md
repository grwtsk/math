# evalFinsetExpect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7f7c56a1bbee5769a4baaded8167479d78f76003e8f0a88e28d515ccd2b2b82",
  "kind": "def",
  "lexical_name": "evalFinsetExpect",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "evalfinsetexpect--5d629eaf54648cab51acbbec",
  "source": {
    "blob": "f396a65996aaa209fcaf3b6bd67a156695628622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant152c2d1431773001dd7ac2944b0df631bb534a1397ba5403af1c7a9da30748c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d629eaf54648cab51acbbec9bd084ea3eba2e0f61423585fadc08bea2f288f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Expect/Variant152c2d1431773001dd7ac2944b0df631bb534a1397ba5403af1c7a9da30748c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7f7c56a1bbee5769a4baaded8167479d78f76003e8f0a88e28d515ccd2b2b82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalFinsetExpect : PositivityExt where eval {u α} zα pα e := do
  match e with
  | ~q(@Finset.expect $ι _ $instα $instmod $s $f) =>
    let i : Q($ι) ← mkFreshExprMVarQ q($ι) .syntheticOpaque
    have body : Q($α) := .betaRev f #[i]
    let rbody ← core zα pα body
    let p_pos : Option Q(0 < $e) := ← (do
      let .positive pbody := rbody | pure none -- Fail if the body is not provably positive
      let .some ps ← proveFinsetNonempty s | pure none
      let .some pα' ← trySynthInstanceQ q(IsOrderedCancelAddMonoid $α) | pure none
      let .some instαordsmul ← trySynthInstanceQ q(PosSMulStrictMono ℚ≥0 $α) | pure none
      assumeInstancesCommute
      let pr : Q(∀ i, 0 < $f i) ← mkLambdaFVars #[i] pbody
      return some
        q(@expect_pos $ι $α $instα $pα $pα' $instmod $s $f $instαordsmul (fun i _ ↦ $pr i) $ps))
    -- Try to show that the sum is positive
    if let some p_pos := p_pos then
      return .positive p_pos
    -- Fall back to showing that the sum is nonnegative
    else
      let pbody ← rbody.toNonneg
      let pr : Q(∀ i, 0 ≤ $f i) ← mkLambdaFVars #[i] pbody
      let instαordmon ← synthInstanceQ q(IsOrderedAddMonoid $α)
      let instαordsmul ← synthInstanceQ q(PosSMulMono ℚ≥0 $α)
      assumeInstancesCommute
      return .nonnegative
        q(@expect_nonneg $ι $α $instα $pα $instαordmon $instmod $s $f $instαordsmul fun i _ ↦ $pr i)
  | _ => throwError "not Finset.expect"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Expect/Variant152c2d1431773001dd7ac2944b0df631bb534a1397ba5403af1c7a9da30748c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant152c2d1431773001dd7ac2944b0df631bb534a1397ba5403af1c7a9da30748c2.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f396a65996aaa209fcaf3b6bd67a156695628622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
