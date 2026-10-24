# sum_eq_coprime_classes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aed7346e-f4c8-2a31-d181-ca1e6a1a2d21",
  "kind": "theorem",
  "lexical_name": "sum_eq_coprime_classes",
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
  "slug": "sum-eq-coprime-classes--e0d7c483e8837bceb789d386",
  "source": {
    "blob": "1e3bf19ad6ff9bd4d871794742d4508966186524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 91,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0d7c483e8837bceb789d386da271912da8dd9cb8c7403ea2295ae9ecbdb28f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aed7346e-f4c8-2a31-d181-ca1e6a1a2d21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_eq_coprime_classes (N : ℕ) (H : ℕ → ℕ → ℝ) :
    (∑ d ∈ Icc 1 N, ∑ e ∈ Icc 1 N, H d e) =
      ∑ p ∈ coprimePairs N, ∑ g ∈ Icc 1 (N / max p.1 p.2), H (g * p.1) (g * p.2) := by
  calc
    _ = ∑ p ∈ (Icc 1 N) ×ˢ (Icc 1 N), H p.1 p.2 := (sum_product _ _ _).symm
    _ = ∑ s ∈ gcdClasses N, H (joinClass s).1 (joinClass s).2 := by
      apply sum_bij' (fun p _ ↦ splitPair p) (fun s _ ↦ joinClass s)
      · exact splitPair_mem N
      · exact joinClass_mem N
      · intro p _
        exact joinClass_splitPair p
      · exact splitPair_joinClass N
      · intro p _
        rw [joinClass_splitPair]
    _ = _ := sum_sigma _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e3bf19ad6ff9bd4d871794742d4508966186524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
