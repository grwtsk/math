# compatibleRingOfRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29caf6f9442a7b1de102ea1feebbac917f39a4c6c10e4a06eedae1f6d9c3f473",
  "kind": "def",
  "lexical_name": "compatibleRingOfRing",
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
  "slug": "compatibleringofring--7fcb1d6a7835b79163edd146",
  "source": {
    "blob": "28aef1785af70890fc4525c397b103f9aa985669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 228,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fcb1d6a7835b79163edd14692a608bd8a62bff9e856dc46d892e8afc4b4fdf7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29caf6f9442a7b1de102ea1feebbac917f39a4c6c10e4a06eedae1f6d9c3f473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compatibleRingOfRing (R : Type*) [Add R] [Mul R] [Neg R] [One R] [Zero R] :
    CompatibleRing R :=
  { funMap := fun {n} f =>
      match n, f with
      | _, .add => fun x => x 0 + x 1
      | _, .mul => fun x => x 0 * x 1
      | _, .neg => fun x => -x 0
      | _, .zero => fun _ => 0
      | _, .one => fun _ => 1
    funMap_add := fun _ => rfl,
    funMap_mul := fun _ => rfl,
    funMap_neg := fun _ => rfl,
    funMap_zero := fun _ => rfl,
    funMap_one := fun _ => rfl }

/-- An isomorphism in the language of rings is a ring isomorphism -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28aef1785af70890fc4525c397b103f9aa985669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
