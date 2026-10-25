# evalAddOverlap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b65221f5a33898063df12e8dadbc3d803e799b89e0459f1b0369423bb45ebef",
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
  "slug": "evaladdoverlap--0b5fe2ee4b54f4ee1dfe221a",
  "source": {
    "blob": "bcfd61f1f8dda3cfa20a73d9fc468d73c06e288d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 303,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b5fe2ee4b54f4ee1dfe221ad38dbcd067da46c6f73d3cd11b5487910a9d36a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b65221f5a33898063df12e8dadbc3d803e799b89e0459f1b0369423bb45ebef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalAddOverlap (va : ExProd sα a) (vb : ExProd sα b) : Option (Overlap sα q($a + $b)) :=
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
  | _, _ => none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcfd61f1f8dda3cfa20a73d9fc468d73c06e288d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
