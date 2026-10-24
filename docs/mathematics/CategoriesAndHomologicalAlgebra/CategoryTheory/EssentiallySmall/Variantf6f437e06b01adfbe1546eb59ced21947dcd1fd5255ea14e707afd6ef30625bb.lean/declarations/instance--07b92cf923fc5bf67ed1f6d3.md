# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fa6c026e82174e561b896bb17185365d7869665c1a61045efc83f590f2f697e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--07b92cf923fc5bf67ed1f6d3",
  "source": {
    "blob": "0c75b812c175169360ab31c3e3437339d27b0c3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 289,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantf6f437e06b01adfbe1546eb59ced21947dcd1fd5255ea14e707afd6ef30625bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07b92cf923fc5bf67ed1f6d3ef5c82516539a66e1520241f197b086db0d20034",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantf6f437e06b01adfbe1546eb59ced21947dcd1fd5255ea14e707afd6ef30625bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0fa6c026e82174e561b896bb17185365d7869665c1a61045efc83f590f2f697e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Small.{w} C] [LocallySmall.{w} C] :
    Small.{w} (Arrow C) := by
  let φ (f : Arrow C) : Σ (s t : C), s ⟶ t := ⟨_, _, f.hom⟩
  refine small_of_injective (f := φ) ?_
  rintro ⟨s, t, f⟩ ⟨s', t', f'⟩ h
  obtain rfl : s = s' := congr_arg Sigma.fst h
  simp only [Sigma.mk.injEq, heq_eq_eq, true_and, φ] at h
  obtain rfl : t = t' := h.1
  obtain rfl : f = f' := by simpa using h
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantf6f437e06b01adfbe1546eb59ced21947dcd1fd5255ea14e707afd6ef30625bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantf6f437e06b01adfbe1546eb59ced21947dcd1fd5255ea14e707afd6ef30625bb.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c75b812c175169360ab31c3e3437339d27b0c3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
