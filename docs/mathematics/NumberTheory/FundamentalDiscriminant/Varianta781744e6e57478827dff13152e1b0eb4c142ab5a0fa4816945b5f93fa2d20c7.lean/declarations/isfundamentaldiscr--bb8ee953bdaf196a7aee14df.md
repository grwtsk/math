# IsFundamentalDiscr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfe0392d8bb0a19035957114e368f7b9cbea317e65e98e134a23ac0933a814a7",
  "kind": "def",
  "lexical_name": "IsFundamentalDiscr",
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
  "slug": "isfundamentaldiscr--bb8ee953bdaf196a7aee14df",
  "source": {
    "blob": "9d2be496eac6c11f86f77bb8870f493a6ea7f8df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 41,
    "path": "GRWTSK/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb8ee953bdaf196a7aee14df619694672b7277077a7e7455b1e80833d1b254fb",
  "verification": {
    "reference": "docs/verification/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfe0392d8bb0a19035957114e368f7b9cbea317e65e98e134a23ac0933a814a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsFundamentalDiscr (D : ℤ) : Prop :=
  (D % 4 = 0 ∨ D % 4 = 1) ∧ (∀ x, D = 4 * x → ¬ 4 ∣ x ∧ x % 4 ≠ 1) ∧
    ∀ p : ℕ, p.Prime → Odd p → ¬ (p : ℤ) ^ 2 ∣ D

variable {D : ℤ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FundamentalDiscriminant/Varianta781744e6e57478827dff13152e1b0eb4c142ab5a0fa4816945b5f93fa2d20c7.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d2be496eac6c11f86f77bb8870f493a6ea7f8df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
