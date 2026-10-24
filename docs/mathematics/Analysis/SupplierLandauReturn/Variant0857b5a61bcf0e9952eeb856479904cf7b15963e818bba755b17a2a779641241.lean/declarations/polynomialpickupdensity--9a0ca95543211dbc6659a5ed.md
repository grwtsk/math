# polynomialPickupDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fbb3b3a0177c5f1615cffd7bd758440d49858986872bad3a8b41c8c65247a99",
  "kind": "def",
  "lexical_name": "polynomialPickupDensity",
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
  "slug": "polynomialpickupdensity--9a0ca95543211dbc6659a5ed",
  "source": {
    "blob": "1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 260,
    "path": "GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a0ca95543211dbc6659a5ed8642549efeb1d448fadc79b44f9d35731808d73f",
  "verification": {
    "reference": "docs/verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fbb3b3a0177c5f1615cffd7bd758440d49858986872bad3a8b41c8c65247a99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def polynomialPickupDensity (W : ℝ → ℝ) (C : ℝ) (m : ℕ) (t : ℝ) : ℝ :=
  C * (1 + t) ^ m - W t

/-- The positive measure retains the actual pickup through its complete density. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
