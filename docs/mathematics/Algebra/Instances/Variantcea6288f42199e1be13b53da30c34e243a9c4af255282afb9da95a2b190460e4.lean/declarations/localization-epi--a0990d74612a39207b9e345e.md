# Localization.epi'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee7133bdf1aa7e2e889b459e0a53e62b669ec37fded3bb57e32fd26f327be7dc",
  "kind": "instance",
  "lexical_name": "Localization.epi'",
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
  "slug": "localization-epi--a0990d74612a39207b9e345e",
  "source": {
    "blob": "8e1142933fabd7f203e2b9c513a59eafe6f1d7b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 36,
    "path": "GRWTSK/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0990d74612a39207b9e345e4002db4fe4ad1c604f575bfe13865a39a107ebbe",
  "verification": {
    "reference": "docs/verification/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee7133bdf1aa7e2e889b459e0a53e62b669ec37fded3bb57e32fd26f327be7dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Localization.epi' {R : CommRingCat} (M : Submonoid R) :
    @Epi CommRingCat _ R _ (CommRingCat.ofHom <| algebraMap R <| Localization M :) := by
  rcases R with ⟨α, str⟩
  exact IsLocalization.epi M _

@[instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Instances/Variantcea6288f42199e1be13b53da30c34e243a9c4af255282afb9da95a2b190460e4.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e1142933fabd7f203e2b9c513a59eafe6f1d7b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
