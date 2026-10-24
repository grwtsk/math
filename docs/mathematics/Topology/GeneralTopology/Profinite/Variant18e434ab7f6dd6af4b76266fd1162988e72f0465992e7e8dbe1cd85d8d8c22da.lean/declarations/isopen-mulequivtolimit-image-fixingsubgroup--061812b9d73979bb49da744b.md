# isOpen_mulEquivToLimit_image_fixingSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1ac757f-85f4-c875-7726-8749eb03d981",
  "kind": "lemma",
  "lexical_name": "isOpen_mulEquivToLimit_image_fixingSubgroup",
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
  "slug": "isopen-mulequivtolimit-image-fixingsubgroup--061812b9d73979bb49da744b",
  "source": {
    "blob": "20dad200a3109fc423a577894f4fa5b00d2951ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 293,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:061812b9d73979bb49da744b394ab9d878c2a1da7369d0a672f0457c727c9677",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1ac757f-85f4-c875-7726-8749eb03d981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_mulEquivToLimit_image_fixingSubgroup [IsGalois k K]
    (L : FiniteGaloisIntermediateField k K) : IsOpen (mulEquivToLimit k K '' L.fixingSubgroup) := by
  let fix1 : Set (Π L, (asProfiniteGaloisGroupFunctor k K).obj L) := {f | f (op L) = 1}
  suffices mulEquivToLimit k K '' L.1.fixingSubgroup = Set.preimage Subtype.val fix1 by
    rw [this]
    exact (isOpen_induced <| (continuous_apply (op L)).isOpen_preimage {1} trivial)
  ext x
  obtain ⟨σ, rfl⟩ := (mulEquivToLimit k K).surjective x
  simpa using FiniteGaloisIntermediateField.mem_fixingSubgroup_iff _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20dad200a3109fc423a577894f4fa5b00d2951ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
