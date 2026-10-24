# tauberian_omitted_prefix_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71523e74-57a0-7d0a-0fc6-2d4b7b95f034",
  "kind": "theorem",
  "lexical_name": "tauberian_omitted_prefix_le",
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
  "slug": "tauberian-omitted-prefix-le--5cb364856b3f1b8ea631a603",
  "source": {
    "blob": "82512b31a851a39b8d7eed65f5ab855adae660cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 66,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cb364856b3f1b8ea631a603f5c3eac18f6f3cee714e6bd6c5ff99e66f5cb1ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71523e74-57a0-7d0a-0fc6-2d4b7b95f034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tauberian_omitted_prefix_le
    (f : ℕ → ℝ) (C : ℝ)
    (hC : 0 ≤ C)
    (hprefix : ∀ N : ℕ,
      (∑ n ∈ Finset.range N, f n) ≤ C * (N : ℝ))
    {k N : ℕ} (hN : 0 < N) :
    (∑ n ∈ Finset.range k, f n) / (N : ℝ) ≤
      C * ((k : ℝ) / (N : ℝ)) := by
  have hNr : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hN
  calc
    (∑ n ∈ Finset.range k, f n) / (N : ℝ)
        ≤ (C * (k : ℝ)) / (N : ℝ) :=
      div_le_div_of_nonneg_right (hprefix k) hNr.le
    _ = C * ((k : ℝ) / (N : ℝ)) := by ring

/-- The authentic last-mile Tauberian theorem: relative interval limits
for ALL sufficiently small fixed positive delta, + nonnegative f and
a fixed linear prefix bound, imply full normalized cumulative limit.

No local PNT theorem or external Wiener-Ikehara proof is invoked.
The Chebyshev bound is used only to control a shrinking initial prefix.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82512b31a851a39b8d7eed65f5ab855adae660cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
