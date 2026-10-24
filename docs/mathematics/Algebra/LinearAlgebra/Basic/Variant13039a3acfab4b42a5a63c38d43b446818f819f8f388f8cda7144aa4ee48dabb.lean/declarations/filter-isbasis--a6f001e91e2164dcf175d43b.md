# Filter.IsBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4609206e78c15f5304c27480cf6c84d091445b4bab36690992c682fda4fd2a6d",
  "kind": "structure",
  "lexical_name": "Filter.IsBasis",
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
  "slug": "filter-isbasis--a6f001e91e2164dcf175d43b",
  "source": {
    "blob": "ccaf7386eaad0653041c253de0145f1ce7aaf3ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant13039a3acfab4b42a5a63c38d43b446818f819f8f388f8cda7144aa4ee48dabb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6f001e91e2164dcf175d43be72e891508739263a920dc74545e9dfb4230667e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant13039a3acfab4b42a5a63c38d43b446818f819f8f388f8cda7144aa4ee48dabb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4609206e78c15f5304c27480cf6c84d091445b4bab36690992c682fda4fd2a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Filter.IsBasis (p : ι → Prop) (s : ι → Set α) : Prop where
  /-- There exists at least one `i` that satisfies `p`. -/
  nonempty : ∃ i, p i
  /-- `s` is directed downwards on `i` such that `p i`. -/
  inter : ∀ {i j}, p i → p j → ∃ k, p k ∧ s k ⊆ s i ∩ s j

namespace Filter

namespace IsBasis

/-- Constructs a filter basis from an indexed family of sets satisfying `IsBasis`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant13039a3acfab4b42a5a63c38d43b446818f819f8f388f8cda7144aa4ee48dabb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant13039a3acfab4b42a5a63c38d43b446818f819f8f388f8cda7144aa4ee48dabb.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccaf7386eaad0653041c253de0145f1ce7aaf3ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
