# evalAddOverlap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce4f472916b47618d8f7b12b8393d66fc1ebbee2ed33387a127331e998e07a98",
  "kind": "def",
  "lexical_name": "evalAddOverlap",
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
  "slug": "evaladdoverlap--e4daeae70e6aeb8e590166b0",
  "source": {
    "blob": "961976da577530921d5f6220ce4ed143b8e30aee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 325,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4daeae70e6aeb8e590166b00f12e75ef6b2b383127da026b4db7ac18a24024c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce4f472916b47618d8f7b12b8393d66fc1ebbee2ed33387a127331e998e07a98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalAddOverlap {a b : Q($α)} (va : ExProd sα a) (vb : ExProd sα b) :
    OptionT Lean.Core.CoreM (Overlap sα q($a + $b)) := do
  Lean.Core.checkSystem decl_name%.toString
  match va, vb with
  | .const za ha, .const zb hb => do
    let ra := Result.ofRawRat za a ha; let rb := Result.ofRawRat zb b hb
    let res ← NormNum.evalAdd.core q($a + $b) q(HAdd.hAdd) a b ra rb
    match res with
    | .isNat _ (.lit (.natVal 0)) p => pure <| .zero p
    | rc =>
      let ⟨zc, hc⟩ ← rc.toRatNZ
      let ⟨c, pc⟩ := rc.toRawEq
      pure <| .nonzero ⟨c, .const zc hc, pc⟩
  | .mul (x := a₁) (e := a₂) va₁ va₂ va₃, .mul vb₁ vb₂ vb₃ => do
    guard (va₁.eq vb₁ && va₂.eq vb₂)
    match ← evalAddOverlap va₃ vb₃ with
    | .zero p => pure <| .zero (q(add_overlap_pf_zero $a₁ $a₂ $p) : Expr)
    | .nonzero ⟨_, vc, p⟩ =>
      pure <| .nonzero ⟨_, .mul va₁ va₂ vc, (q(add_overlap_pf $a₁ $a₂ $p) : Expr)⟩
  | _, _ => OptionT.fail

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `961976da577530921d5f6220ce4ed143b8e30aee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
