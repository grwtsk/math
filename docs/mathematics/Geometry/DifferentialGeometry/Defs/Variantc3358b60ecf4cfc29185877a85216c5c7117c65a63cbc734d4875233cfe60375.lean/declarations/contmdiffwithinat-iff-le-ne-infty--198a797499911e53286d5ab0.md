# contMDiffWithinAt_iff_le_ne_infty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15a9106d-cdf7-642b-c769-4debece6d7e0",
  "kind": "theorem",
  "lexical_name": "contMDiffWithinAt_iff_le_ne_infty",
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
  "slug": "contmdiffwithinat-iff-le-ne-infty--198a797499911e53286d5ab0",
  "source": {
    "blob": "a09ef88902e31effc13a32653c4edc052505d3be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 676,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variantc3358b60ecf4cfc29185877a85216c5c7117c65a63cbc734d4875233cfe60375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:198a797499911e53286d5ab0985e14c33ba603f16dc1a1d5a2b3168c95a4b5d3",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variantc3358b60ecf4cfc29185877a85216c5c7117c65a63cbc734d4875233cfe60375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15a9106d-cdf7-642b-c769-4debece6d7e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffWithinAt_iff_le_ne_infty :
    ContMDiffWithinAt I I' n f s x ↔ ∀ m, m ≤ n → m ≠ ∞ → ContMDiffWithinAt I I' m f s x := by
  refine ⟨fun h m hm h'm ↦ h.of_le hm, fun h ↦ ?_⟩
  cases n with
  | top =>
    exact h _ le_rfl (by simp)
  | coe n =>
    exact contMDiffWithinAt_iff_nat.2 (fun m hm ↦ h _ (mod_cast hm) (by simp))

/-- A function is `C^n`at a point iff it is `C^m`at this point, for
any `m ≤ n` which is different from `∞`. This result is useful because, when `m ≠ ∞`, being
`C^m` extends locally to a neighborhood, giving flexibility for local proofs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variantc3358b60ecf4cfc29185877a85216c5c7117c65a63cbc734d4875233cfe60375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variantc3358b60ecf4cfc29185877a85216c5c7117c65a63cbc734d4875233cfe60375.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a09ef88902e31effc13a32653c4edc052505d3be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
