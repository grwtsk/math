# comp_noncommPiCoprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd2d14f5-5c62-8f61-5cbb-27a0cb1209b7",
  "kind": "theorem",
  "lexical_name": "comp_noncommPiCoprod",
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
  "slug": "comp-noncommpicoprod--f6efdde0fc05a4af8fc1d4a2",
  "source": {
    "blob": "6f948329efb44a1b07759eceb5cdb566fc81842f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 197,
    "path": "GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6efdde0fc05a4af8fc1d4a20273de9942ab7129b1e4ca245c9692b29b89e1ca",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd2d14f5-5c62-8f61-5cbb-27a0cb1209b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_noncommPiCoprod {P : Type*} [Monoid P] {f : M →* P}
    (hcomm' : Pairwise fun i j => ∀ x y, Commute (f.comp (ϕ i) x) (f.comp (ϕ j) y) :=
      Pairwise.mono hcomm (fun i j ↦ forall_imp (fun x h y ↦ by
        simp only [MonoidHom.coe_comp, Function.comp_apply, Commute.map (h y) f]))) :
    f.comp (MonoidHom.noncommPiCoprod ϕ hcomm) =
      MonoidHom.noncommPiCoprod (fun i ↦ f.comp (ϕ i)) hcomm' :=
  MonoidHom.ext fun _ ↦ by
    simp only [MonoidHom.noncommPiCoprod, MonoidHom.coe_comp, MonoidHom.coe_mk, OneHom.coe_mk,
      Function.comp_apply, Finset.map_noncommProd]

end MonoidHom

end FamilyOfMonoids

section FamilyOfGroups

variable {G : Type*} [Group G]
variable {ι : Type*}
variable {H : ι → Type*} [∀ i, Group (H i)]
variable (ϕ : ∀ i : ι, H i →* G)

namespace MonoidHom
-- The subgroup version of `MonoidHom.noncommPiCoprod_mrange`
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant8aaf64d873a01264ec5879df9b03826f492dfa37af1f10fe74195e4fc38a6e7e.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f948329efb44a1b07759eceb5cdb566fc81842f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
