# native_tree_leaf_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:079672da-dc58-871c-57b9-01a43082dd16",
  "kind": "theorem",
  "lexical_name": "native_tree_leaf_energy",
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
  "slug": "native-tree-leaf-energy--cc09f0d2128622a808cf1c36",
  "source": {
    "blob": "fc33d0f7f947835f8c753d29fdf7608356211348",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeHaarEnergy/Variantc2f1896cde1826440fed7cc54956f9c320ad2cb026abcea55c06654b5f010097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc09f0d2128622a808cf1c36cbfb9c1b8877cf3e347668564f55e17f5de34bcf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeHaarEnergy/Variantc2f1896cde1826440fed7cc54956f9c320ad2cb026abcea55c06654b5f010097.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:079672da-dc58-871c-57b9-01a43082dd16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_tree_leaf_energy {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    leafEnergy (nativeTree N K) = completeCellEnergy N (K + 1) := by
  induction K with
  | zero =>
      simpa [nativeTree, leafEnergy, completeCellEnergy] using
        normalized_atom_energy (cellClock_pos hN) (storage N 0)
  | succ K ih =>
      change leafEnergy (nativeTree N K) +
        (storage N (K + 1) * cellClock (N + (K + 1)) (N + (K + 1) + 1 : ℕ)) ^ 2 /
          cellClock (N + (K + 1)) (N + (K + 1) + 1 : ℕ) =
        ∑ j ∈ Finset.range ((K + 1) + 1),
          storage N j ^ 2 * cellClock (N + j) (N + j + 1 : ℕ)
      rw [ih]
      conv_rhs => rw [Finset.sum_range_succ]
      congr 1
      exact normalized_atom_energy (cellClock_pos (by omega : 1 ≤ N + (K + 1))) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeHaarEnergy/Variantc2f1896cde1826440fed7cc54956f9c320ad2cb026abcea55c06654b5f010097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeHaarEnergy/Variantc2f1896cde1826440fed7cc54956f9c320ad2cb026abcea55c06654b5f010097.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc33d0f7f947835f8c753d29fdf7608356211348` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
