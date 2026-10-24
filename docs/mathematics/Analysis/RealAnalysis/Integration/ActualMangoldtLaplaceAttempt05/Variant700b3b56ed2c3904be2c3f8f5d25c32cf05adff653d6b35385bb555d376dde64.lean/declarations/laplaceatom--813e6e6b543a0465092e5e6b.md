# laplaceAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:021fee1f4a8823ac01e71c93ae860dbb3af8fe4ce4c49d9655a6ccc7e5ddeb36",
  "kind": "def",
  "lexical_name": "laplaceAtom",
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
  "slug": "laplaceatom--813e6e6b543a0465092e5e6b",
  "source": {
    "blob": "b60a8c031a1b0292ff751f1560af73abbf736c47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 22,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:813e6e6b543a0465092e5e6b1c385289d348218c101f60ee55310c50f64c9b1c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:021fee1f4a8823ac01e71c93ae860dbb3af8fe4ce4c49d9655a6ccc7e5ddeb36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 def laplaceAtom (s : ℝ) (n : ℕ) : ℝ → ℝ :=
  (Ici (Real.log ((n+2 : ℕ) : ℝ))).indicator
    (fun t => mangoldtWeight n * Real.exp (-s*t))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant700b3b56ed2c3904be2c3f8f5d25c32cf05adff653d6b35385bb555d376dde64.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b60a8c031a1b0292ff751f1560af73abbf736c47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
