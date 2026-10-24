# AlgebraicIndepOn.insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9dc7d56e-82ea-6526-816e-39f9166c0db8",
  "kind": "theorem",
  "lexical_name": "AlgebraicIndepOn.insert",
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
  "slug": "algebraicindepon-insert--c9d7db3bee61e3d1e5042951",
  "source": {
    "blob": "ef261d6016db892c215a10a908b6a78b1d07f431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 130,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Transcendental/Variant96490a1e3ae85873820d6361ef30a236c6bb0c70083b37f35b65b4cacb5d3b7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9d7db3bee61e3d1e5042951366f26def171f7042eaa94f64934e72281e58aba",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Transcendental/Variant96490a1e3ae85873820d6361ef30a236c6bb0c70083b37f35b65b4cacb5d3b7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dc7d56e-82ea-6526-816e-39f9166c0db8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem AlgebraicIndepOn.insert {s : Set ι} {i : ι} (hs : AlgebraicIndepOn R x s)
    (hi : Transcendental (adjoin R (x '' s)) (x i)) : AlgebraicIndepOn R x (insert i s) := by
  nontriviality R
  have := hs.algebraMap_injective.nontrivial
  exact (insert_iff fun h ↦ hi <| isAlgebraic_algebraMap
    (⟨_, subset_adjoin ⟨i, h, rfl⟩⟩ : adjoin R (x '' s))).mpr ⟨hs, hi⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Transcendental/Variant96490a1e3ae85873820d6361ef30a236c6bb0c70083b37f35b65b4cacb5d3b7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Transcendental/Variant96490a1e3ae85873820d6361ef30a236c6bb0c70083b37f35b65b4cacb5d3b7c.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef261d6016db892c215a10a908b6a78b1d07f431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
