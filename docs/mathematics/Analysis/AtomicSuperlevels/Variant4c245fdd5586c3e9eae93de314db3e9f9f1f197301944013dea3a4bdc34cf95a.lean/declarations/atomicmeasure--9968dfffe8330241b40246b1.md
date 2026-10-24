# atomicMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:008e764ef566ae5a6abc78c5f0d54728b3c7917abc595a364a4010caacf303d9",
  "kind": "def",
  "lexical_name": "atomicMeasure",
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
  "slug": "atomicmeasure--9968dfffe8330241b40246b1",
  "source": {
    "blob": "836d73fecf283c4b177d320ae708960790b07d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 32,
    "path": "GRWTSK/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9968dfffe8330241b40246b1cc097d565b4f1303b0eca272bd7d3d75fec72db5",
  "verification": {
    "reference": "docs/verification/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:008e764ef566ae5a6abc78c5f0d54728b3c7917abc595a364a4010caacf303d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def atomicMeasure {ι : Type*} [MeasurableSpace ι] (s : Finset ι) (w : ι → ℝ≥0∞) : Measure ι :=
  ∑ i ∈ s, w i • Measure.dirac i
/-- The superlevel mass in this module, with the following exact parameterization.

def superlevelMass {ι : Type*} (s : Finset ι) (w : ι → ℝ≥0∞) (f : ι → ℝ) (t : ℝ) : ℝ≥0∞ := ∑ i
∈ s, if t ≤ f i then w i else 0
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `836d73fecf283c4b177d320ae708960790b07d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
