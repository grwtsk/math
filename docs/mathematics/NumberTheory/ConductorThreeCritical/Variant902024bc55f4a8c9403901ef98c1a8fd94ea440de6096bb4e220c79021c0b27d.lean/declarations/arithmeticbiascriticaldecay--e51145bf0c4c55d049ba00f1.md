# ArithmeticBiasCriticalDecay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2629f1e30dc372184f0aec7d87232e6eb3fab5a32d2f758e42e77d970cd04643",
  "kind": "def",
  "lexical_name": "ArithmeticBiasCriticalDecay",
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
  "slug": "arithmeticbiascriticaldecay--e51145bf0c4c55d049ba00f1",
  "source": {
    "blob": "9f8ee1980d1dc64b45fc45b454199ba6683879e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 269,
    "path": "GRWTSK/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e51145bf0c4c55d049ba00f12c1e331d7acb7fbec65bdd8e07545f70f1f07e9a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2629f1e30dc372184f0aec7d87232e6eb3fab5a32d2f758e42e77d970cd04643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ArithmeticBiasCriticalDecay (counts : ResidueSixCounts) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ᶠ K : ℕ in atTop,
      |indexedArithmeticBias counts K| ≤
        C * conductorThreeCriticalRate K

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8ee1980d1dc64b45fc45b454199ba6683879e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
