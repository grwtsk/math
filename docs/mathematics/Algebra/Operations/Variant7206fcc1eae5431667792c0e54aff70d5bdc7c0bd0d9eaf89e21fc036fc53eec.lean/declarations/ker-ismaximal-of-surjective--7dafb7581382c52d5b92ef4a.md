# ker_isMaximal_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2113c1ae-d464-a252-5967-4811187306e0",
  "kind": "theorem",
  "lexical_name": "ker_isMaximal_of_surjective",
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
  "slug": "ker-ismaximal-of-surjective--7dafb7581382c52d5b92ef4a",
  "source": {
    "blob": "d93bb8daa13aa4395647185dd4aa01fbafca6654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2101,
    "line": 2079,
    "path": "GRWTSK/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dafb7581382c52d5b92ef4a762fb310dc80622b2eeda1b8b52a3540be2f8d03",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2113c1ae-d464-a252-5967-4811187306e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2079–2101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_isMaximal_of_surjective {R K F : Type*} [Ring R] [Field K] [RingHomClass F R K] (f : F)
    (hf : Function.Surjective f) : (ker f).IsMaximal := by
  refine'
    Ideal.isMaximal_iff.mpr
      ⟨fun h1 => one_ne_zero' K <| map_one f ▸ (mem_ker f).mp h1, fun J x hJ hxf hxJ => _⟩
  obtain ⟨y, hy⟩ := hf (f x)⁻¹
  have H : 1 = y * x - (y * x - 1) := (sub_sub_cancel _ _).symm
  rw [H]
  refine' J.sub_mem (J.mul_mem_left _ hxJ) (hJ _)
  rw [mem_ker]
  simp only [hy, map_sub, map_one, map_mul, inv_mul_cancel (mt (mem_ker f).mpr hxf), sub_self]
#align ring_hom.ker_is_maximal_of_surjective RingHom.ker_isMaximal_of_surjective

end RingHom

namespace Ideal

variable {R : Type*} {S : Type*} {F : Type*}

section Semiring

variable [Semiring R] [Semiring S] [rc : RingHomClass F R S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean#L2079).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d93bb8daa13aa4395647185dd4aa01fbafca6654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
