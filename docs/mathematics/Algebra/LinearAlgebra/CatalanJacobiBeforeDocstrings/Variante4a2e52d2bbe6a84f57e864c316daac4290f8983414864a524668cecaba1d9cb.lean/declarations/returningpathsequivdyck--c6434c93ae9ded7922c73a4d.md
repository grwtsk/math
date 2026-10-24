# returningPathsEquivDyck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f861500caf09ea320e3ebe867548436de0cb933fbb7c55509ccdff8c67ecbfb",
  "kind": "def",
  "lexical_name": "returningPathsEquivDyck",
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
  "slug": "returningpathsequivdyck--c6434c93ae9ded7922c73a4d",
  "source": {
    "blob": "53272ffee16bf806552418c27a0d1bae7f86f7db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 129,
    "path": "GRWTSK/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variante4a2e52d2bbe6a84f57e864c316daac4290f8983414864a524668cecaba1d9cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6434c93ae9ded7922c73a4d92abe657ee1b9ef479912a43c7b4e172ac457de7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variante4a2e52d2bbe6a84f57e864c316daac4290f8983414864a524668cecaba1d9cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f861500caf09ea320e3ebe867548436de0cb933fbb7c55509ccdff8c67ecbfb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def returningPathsEquivDyck (n : ℕ) :
    {l // l ∈ paths (2 * n) 0} ≃ {p : DyckWord // p.semilength = n} where
  toFun l := by
    have H := (mem_paths (2 * n) 0 l.1).mp l.2
    refine ⟨⟨l.1, by simpa using H.2.1.symm, by simpa [Nonnegative] using H.2.2⟩, ?_⟩
    change l.1.count U = n
    have L := length_eq_counts l.1
    simp at H
    omega
  invFun p := ⟨p.1.toList, by
    rw [mem_paths]
    refine ⟨?_, ?_, ?_⟩
    · rw [← p.1.two_mul_semilength_eq_length, p.2]
    · simpa using p.1.count_U_eq_count_D.symm
    · simpa [Nonnegative] using p.1.count_D_le_count_U⟩
  left_inv _ := rfl
  right_inv _ := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variante4a2e52d2bbe6a84f57e864c316daac4290f8983414864a524668cecaba1d9cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CatalanJacobiBeforeDocstrings/Variante4a2e52d2bbe6a84f57e864c316daac4290f8983414864a524668cecaba1d9cb.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53272ffee16bf806552418c27a0d1bae7f86f7db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
