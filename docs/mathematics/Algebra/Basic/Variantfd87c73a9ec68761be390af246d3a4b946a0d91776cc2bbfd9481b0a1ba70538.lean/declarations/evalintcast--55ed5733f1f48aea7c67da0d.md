# evalIntCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08a831992b1625c534a4ad2388ecc505d63731c69dbb17af884e08d64f092dc9",
  "kind": "def",
  "lexical_name": "evalIntCast",
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
  "slug": "evalintcast--55ed5733f1f48aea7c67da0d",
  "source": {
    "blob": "7536d6a75dcc19c666c709cbd6af53b6a95e678d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 131,
    "path": "GRWTSK/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55ed5733f1f48aea7c67da0ddee1a9ea42938a097812293bd8b26540ad2b8343",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08a831992b1625c534a4ad2388ecc505d63731c69dbb17af884e08d64f092dc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[norm_num Int.cast _, IntCast.intCast _] def evalIntCast : NormNumExt where eval {u α} e := do
  let rα ← inferRing α
  let .app i (a : Q(ℤ)) ← whnfR e | failure
  guard <|← withNewMCtxDepth <| isDefEq i q(Int.cast (R := $α))
  match ← derive (α := q(ℤ)) a with
  | .isNat _ na pa =>
    assumeInstancesCommute
    haveI' : $e =Q Int.cast $a := ⟨⟩
    return .isNat _ na q(isNat_intCast $a $na $pa)
  | .isNegNat _ na pa =>
    assumeInstancesCommute
    haveI' : $e =Q Int.cast $a := ⟨⟩
    return .isNegNat _ na q(isintCast $a (.negOfNat $na) $pa)
  | _ => failure

/-! # Arithmetic -/

library_note "norm_num lemma function equality"/--
Note: Many of the lemmas in this file use a function equality hypothesis like `f = HAdd.hAdd`
below. The reason for this is that when this is applied, to prove e.g. `100 + 200 = 300`, the
`+` here is `HAdd.hAdd` with an instance that may not be syntactically equal to the one supplied
by the `AddMonoidWithOne` instance, and rather than attempting to prove the instances equal lean
will sometimes decide to evaluate `100 + 200` directly (into whatever `+` is defined to do in this
ring), which is definitely not what we want; if the subterms are expensive to kernel-reduce then
this could cause a `(kernel) deep recursion detected` error (see https://github.com/leanprover/lean4/issues/2171, https://github.com/leanprover-community/mathlib4/pull/4048).

By using an equality for the unapplied `+` function and proving it by `rfl` we take away the
opportunity for lean to unfold the numerals (and the instance defeq problem is usually comparatively
easy).
-/

-- see note [norm_num lemma function equality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7536d6a75dcc19c666c709cbd6af53b6a95e678d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
