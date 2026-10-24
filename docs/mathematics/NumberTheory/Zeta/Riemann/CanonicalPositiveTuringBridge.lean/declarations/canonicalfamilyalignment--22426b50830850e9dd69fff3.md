# CanonicalFamilyAlignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34ac23e29beb6c777b5953dcae38707918cc8077fb26ceb7711a189f036829ec",
  "kind": "structure",
  "lexical_name": "CanonicalFamilyAlignment",
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
  "slug": "canonicalfamilyalignment--22426b50830850e9dd69fff3",
  "source": {
    "blob": "011c4e2da11499c71c29f1b16cde02408e605360",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22426b50830850e9dd69fff3e3a67caed8ee8cdab1ffe59e821bbf74d4b796b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34ac23e29beb6c777b5953dcae38707918cc8077fb26ceb7711a189f036829ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CanonicalFamilyAlignment
    (family : DisjointCertifiedFamily Index Source Jet Transport Residual)
    (T : ℝ) where
  point : Index → ZeroPoint
  point_injective : Function.Injective point
  point_mem_head : ∀ i, point i ∈ positiveHeightHead T
  point_on_line : ∀ i, (point i).1.re = 1 / 2
  multiplicity_eq : ∀ i, (family.record i).multiplicity = multiplicity (point i)
  height_mem_interval : ∀ i,
    (point i).1.im ∈ (family.record i).interval.carrier

namespace CanonicalFamilyAlignment

variable {family : DisjointCertifiedFamily Index Source Jet Transport Residual}
    {T : ℝ}

/-- Deduplicate by full canonical zero identity, not interval label or producer key. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `011c4e2da11499c71c29f1b16cde02408e605360` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
