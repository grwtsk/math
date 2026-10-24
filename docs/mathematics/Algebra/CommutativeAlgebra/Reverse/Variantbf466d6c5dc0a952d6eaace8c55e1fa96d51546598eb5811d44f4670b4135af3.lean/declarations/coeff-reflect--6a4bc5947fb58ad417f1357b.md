# coeff_reflect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b93c1279c6580109a0e439c9bd019e18f7b7cc04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c980d259-bb11-4e0d-655b-43ee9c87e542",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d1ab098-d03b-1808-81aa-1375a1f4ac3a",
  "kind": "theorem",
  "lexical_name": "coeff_reflect",
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
  "slug": "coeff-reflect--6a4bc5947fb58ad417f1357b",
  "source": {
    "blob": "b93c1279c6580109a0e439c9bd019e18f7b7cc04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 114,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a4bc5947fb58ad417f1357be0485d457920f8d5be84740b6c536b1ce5d4ad25",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d1ab098-d03b-1808-81aa-1375a1f4ac3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_reflect (N : ℕ) (f : R[X]) (i : ℕ) : coeff (reflect N f) i = f.coeff (revAt N i) := by
  rcases f with ⟨f⟩
  simp only [reflect, coeff]
  calc
    Finsupp.embDomain (revAt N) f i = Finsupp.embDomain (revAt N) f (revAt N (revAt N i)) := by
      rw [revAt_invol]
    _ = f (revAt N i) := Finsupp.embDomain_apply _ _ _
#align polynomial.coeff_reflect Polynomial.coeff_reflect

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variantbf466d6c5dc0a952d6eaace8c55e1fa96d51546598eb5811d44f4670b4135af3.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b93c1279c6580109a0e439c9bd019e18f7b7cc04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
