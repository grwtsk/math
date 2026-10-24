# algebra₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cbce1015da1c23dcedb62e7aa3e1648741a9410aea35d173c9aea5041a6a044",
  "kind": "instance",
  "lexical_name": "algebra₁",
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
  "slug": "algebra--8ce774e19e715b5c9894afb5",
  "source": {
    "blob": "f6ff5fc455611e01e0150760ab9d6660ffe0600f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 75,
    "path": "GRWTSK/Algebra/NoetherianDescent/Variantadb740c2a8de4d5284e0c523d18a5e78a29bcea8442f974998e0e5d8f4c5dec9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ce774e19e715b5c9894afb51bed61421f4f8fcb5979ea89c12d197b8ec36b69",
  "verification": {
    "reference": "docs/verification/Algebra/NoetherianDescent/Variantadb740c2a8de4d5284e0c523d18a5e78a29bcea8442f974998e0e5d8f4c5dec9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cbce1015da1c23dcedb62e7aa3e1648741a9410aea35d173c9aea5041a6a044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance algebra₁ : Algebra (D.subalgebra R) A :=
  inferInstanceAs <| Algebra (Algebra.adjoin _ _) A

-- Note: `Set` has no computational content, but Lean still attempts to compile it.
-- See https://github.com/leanprover/lean4/issues/14084.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NoetherianDescent/Variantadb740c2a8de4d5284e0c523d18a5e78a29bcea8442f974998e0e5d8f4c5dec9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NoetherianDescent/Variantadb740c2a8de4d5284e0c523d18a5e78a29bcea8442f974998e0e5d8f4c5dec9.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6ff5fc455611e01e0150760ab9d6660ffe0600f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
