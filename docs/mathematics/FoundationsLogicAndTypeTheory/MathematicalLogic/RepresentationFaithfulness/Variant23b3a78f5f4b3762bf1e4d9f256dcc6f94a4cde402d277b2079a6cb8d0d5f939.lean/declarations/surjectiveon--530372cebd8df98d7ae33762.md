# SurjectiveOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bbfba2de8f9f3b373c0368deb8f0d8dd67d0ac231ef9b1139648dea9ab3608f",
  "kind": "def",
  "lexical_name": "SurjectiveOn",
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
  "slug": "surjectiveon--530372cebd8df98d7ae33762",
  "source": {
    "blob": "ab6f4e0fd106872f4bfcd37679ef6627ad10c53a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:530372cebd8df98d7ae337629a2f19edcb1b41e5f3934629bfa84d16e2465bbf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0bbfba2de8f9f3b373c0368deb8f0d8dd67d0ac231ef9b1139648dea9ab3608f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SurjectiveOn
    {Γ α : Type _}
    {one : Γ}
    {mul : Γ → Γ → Γ}
    (R : Monodromy.MonodromyRepresentation Γ mul one α)
    (T : SelectedTwistGroup α) : Prop :=
  ∀ φ, φ ∈ T.Twist → ∃ g, R.ρ g = φ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RepresentationFaithfulness/Variant23b3a78f5f4b3762bf1e4d9f256dcc6f94a4cde402d277b2079a6cb8d0d5f939.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab6f4e0fd106872f4bfcd37679ef6627ad10c53a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
