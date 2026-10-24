# eq_traj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55c556e1012c4fcc8a84a45c7cd0c3a401453c4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 566,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:305c3b53-cb97-af72-d10b-d917a6181779",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b8cd52e-5c98-b530-2abb-3e6e67363378",
  "kind": "theorem",
  "lexical_name": "eq_traj",
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
  "slug": "eq-traj--c9c6261be670fa84c7eb7e16",
  "source": {
    "blob": "55c556e1012c4fcc8a84a45c7cd0c3a401453c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 566,
    "path": "GRWTSK/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9c6261be670fa84c7eb7e1652a095ec2caaeb9df51a979eaf19dd9166daf850",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b8cd52e-5c98-b530-2abb-3e6e67363378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_traj {a : ℕ} (η : Kernel (Π i : Iic a, X i) (Π n, X n))
    (hη : ∀ b, η.map (frestrictLe b) = partialTraj κ a b) : η = traj κ a :=
  eq_traj' κ 0 η fun b _ ↦ hη b

variable {κ}

/-- Given the distribution up to tome `a`, `partialTraj κ a b` gives the distribution
of the trajectory up to time `b`, and composing this with `traj κ b` gives the distribution
of the whole trajectory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55c556e1012c4fcc8a84a45c7cd0c3a401453c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
