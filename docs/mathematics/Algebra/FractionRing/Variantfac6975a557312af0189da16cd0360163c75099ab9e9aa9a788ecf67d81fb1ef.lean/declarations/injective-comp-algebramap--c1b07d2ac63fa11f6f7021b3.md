# injective_comp_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "915d9cf3c6c25054c2bbf7a29b63b6208183cc0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 364,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fac6975a557312af0189da16cd0360163c75099ab9e9aa9a788ecf67d81fb1ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e50fe307-7c0b-999a-e9c5-e608b2e05265",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eab1c1e0-a008-057a-9675-f8a28b717838",
  "kind": "theorem",
  "lexical_name": "injective_comp_algebraMap",
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
  "slug": "injective-comp-algebramap--c1b07d2ac63fa11f6f7021b3",
  "source": {
    "blob": "915d9cf3c6c25054c2bbf7a29b63b6208183cc0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 364,
    "path": "GRWTSK/Algebra/FractionRing/Variantfac6975a557312af0189da16cd0360163c75099ab9e9aa9a788ecf67d81fb1ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1b07d2ac63fa11f6f7021b3f5f9db744d6c77b32321403f820a36be6c565c0f",
  "verification": {
    "reference": "docs/verification/Algebra/FractionRing/Variantfac6975a557312af0189da16cd0360163c75099ab9e9aa9a788ecf67d81fb1ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eab1c1e0-a008-057a-9675-f8a28b717838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_comp_algebraMap :
    Function.Injective fun (f : K →+* L) => f.comp (algebraMap A K) :=
  fun _ _ h => ringHom_ext (fun x => RingHom.congr_fun h x)

section liftAlgHom

variable [Algebra R A] [Algebra R K] [IsScalarTower R A K] [Algebra R L]
  {g : A →ₐ[R] L} (hg : Injective g) (x : K)
include hg

/-- `AlgHom` version of `IsFractionRing.lift`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FractionRing/Variantfac6975a557312af0189da16cd0360163c75099ab9e9aa9a788ecf67d81fb1ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FractionRing/Variantfac6975a557312af0189da16cd0360163c75099ab9e9aa9a788ecf67d81fb1ef.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915d9cf3c6c25054c2bbf7a29b63b6208183cc0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
