# SeminormedAddCommGroup.Core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1fe5ce645bdd35746da3a7955f5115ec852feefdc8dbfa3234f42b9bbba387ea",
  "kind": "structure",
  "lexical_name": "SeminormedAddCommGroup.Core",
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
  "slug": "seminormedaddcommgroup-core--7698a1703eb4ebaca0c13d6a",
  "source": {
    "blob": "6b7b64d2a6ed6dc245a1babb322492685b0c36e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 507,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant23b747ffe43fab18204e61f63779a797121cdb23b59d966578e8265105a49246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7698a1703eb4ebaca0c13d6a9d252878c965ee6687ec070713a3afd67773e4d3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant23b747ffe43fab18204e61f63779a797121cdb23b59d966578e8265105a49246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1fe5ce645bdd35746da3a7955f5115ec852feefdc8dbfa3234f42b9bbba387ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SeminormedAddCommGroup.Core (𝕜 : Type*) (E : Type*) [NormedField 𝕜] [AddCommGroup E]
    [Norm E] [Module 𝕜 E] : Prop where
  norm_nonneg (x : E) : 0 ≤ ‖x‖
  norm_smul (c : 𝕜) (x : E) : ‖c • x‖ = ‖c‖ * ‖x‖
  norm_triangle (x y : E) : ‖x + y‖ ≤ ‖x‖ + ‖y‖

/-- Produces a `PseudoMetricSpace E` instance from a `SeminormedAddCommGroup.Core`. Note that
if this is used to define an instance on a type, it also provides a new uniformity and
topology on the type. See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant23b747ffe43fab18204e61f63779a797121cdb23b59d966578e8265105a49246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant23b747ffe43fab18204e61f63779a797121cdb23b59d966578e8265105a49246.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b7b64d2a6ed6dc245a1babb322492685b0c36e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
