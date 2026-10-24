# superlevelMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04bebb69387990fbbe91804dc44b28af19433b1ad3efb813c2c48e36a4a8443e",
  "kind": "def",
  "lexical_name": "superlevelMass",
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
  "slug": "superlevelmass--f77f786dfaa3403ce8a14279",
  "source": {
    "blob": "836d73fecf283c4b177d320ae708960790b07d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 39,
    "path": "GRWTSK/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f77f786dfaa3403ce8a1427930b39ef28f29adc5ce205d2923aa506be01e7249",
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

Occurrence: `declaration:04bebb69387990fbbe91804dc44b28af19433b1ad3efb813c2c48e36a4a8443e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def superlevelMass {ι : Type*} (s : Finset ι) (w : ι → ℝ≥0∞) (f : ι → ℝ) (t : ℝ) : ℝ≥0∞ :=
  ∑ i ∈ s, if t ≤ f i then w i else 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `836d73fecf283c4b177d320ae708960790b07d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
