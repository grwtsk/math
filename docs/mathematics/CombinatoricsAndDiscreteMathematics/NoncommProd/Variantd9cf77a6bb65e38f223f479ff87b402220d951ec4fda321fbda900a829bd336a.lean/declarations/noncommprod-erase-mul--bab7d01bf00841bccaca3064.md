# noncommProd_erase_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb6e6f95-b0b9-b419-5e77-bed16c06d1e2",
  "kind": "theorem",
  "lexical_name": "noncommProd_erase_mul",
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
  "slug": "noncommprod-erase-mul--bab7d01bf00841bccaca3064",
  "source": {
    "blob": "833e40529ff0486c5673892e38995f97d2411d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 217,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bab7d01bf00841bccaca30647ac7940cbda2e9f6a07948ae0ceac861d313dc22",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb6e6f95-b0b9-b419-5e77-bed16c06d1e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noncommProd_erase_mul [DecidableEq α] (s : Multiset α) {a : α} (h : a ∈ s) (comm)
    (comm' := fun _ hx _ hy hxy ↦ comm (s.mem_of_mem_erase hx) (s.mem_of_mem_erase hy) hxy) :
    (s.erase a).noncommProd comm' * a = s.noncommProd comm := by
  suffices ∀ b ∈ erase s a, Commute a b by
    rw [← (noncommProd_commute (s.erase a) comm' a this).eq, mul_noncommProd_erase s h comm comm']
  intro b hb
  rcases eq_or_ne a b with rfl | hab
  · rfl
  exact comm h (mem_of_mem_erase hb) hab

end Multiset

namespace Finset

variable [Monoid β] [Monoid γ]

open scoped Function -- required for scoped `on` notation

/-- Proof used in definition of `Finset.noncommProd` -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `833e40529ff0486c5673892e38995f97d2411d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
