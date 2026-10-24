# well_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec2a5064-b715-561b-ee9f-6976b3cc5e8e",
  "kind": "theorem",
  "lexical_name": "well_def",
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
  "slug": "well-def--cd79cbdcf0a0539d058db5ac",
  "source": {
    "blob": "9531cb0a30ce31817293be23085f337956497c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 645,
    "path": "GRWTSK/Algebra/GroupTheory/Quandle/Variant60afee85b4a8842780aac682f64c79f53c6b8af7c5bbf9b0f04b9836a29236a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd79cbdcf0a0539d058db5ac924b866b4eb7fd300dabbbcf4dab5e3a91c7c1b6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quandle/Variant60afee85b4a8842780aac682f64c79f53c6b8af7c5bbf9b0f04b9836a29236a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec2a5064-b715-561b-ee9f-6976b3cc5e8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem well_def {R : Type*} [Rack R] {G : Type*} [Group G] (f : R →◃ Quandle.Conj G) :
    ∀ {a b : PreEnvelGroup R},
      PreEnvelGroupRel' R a b → toEnvelGroup.mapAux f a = toEnvelGroup.mapAux f b
  | _, _, PreEnvelGroupRel'.refl => rfl
  | _, _, PreEnvelGroupRel'.symm h => (well_def f h).symm
  | _, _, PreEnvelGroupRel'.trans hac hcb => Eq.trans (well_def f hac) (well_def f hcb)
  | _, _, PreEnvelGroupRel'.congr_mul ha hb => by
    simp [toEnvelGroup.mapAux, well_def f ha, well_def f hb]
  | _, _, congr_inv ha => by simp [toEnvelGroup.mapAux, well_def f ha]
  | _, _, assoc a b c => by apply mul_assoc
  | _, _, PreEnvelGroupRel'.one_mul a => by simp [toEnvelGroup.mapAux]
  | _, _, PreEnvelGroupRel'.mul_one a => by simp [toEnvelGroup.mapAux]
  | _, _, PreEnvelGroupRel'.inv_mul_cancel a => by simp [toEnvelGroup.mapAux]
  | _, _, act_incl x y => by simp [toEnvelGroup.mapAux]

end toEnvelGroup.mapAux

set_option backward.isDefEq.respectTransparency false in
/-- Given a map from a rack to a group, lift it to being a map from the enveloping group.
More precisely, the `EnvelGroup` functor is left adjoint to `Quandle.Conj`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quandle/Variant60afee85b4a8842780aac682f64c79f53c6b8af7c5bbf9b0f04b9836a29236a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quandle/Variant60afee85b4a8842780aac682f64c79f53c6b8af7c5bbf9b0f04b9836a29236a4.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9531cb0a30ce31817293be23085f337956497c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
