# Carries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84b432d9afba64ac049b9e016f8d370d42fb5f0aa09a0af7ee91749f5d47fd87",
  "kind": "def",
  "lexical_name": "Carries",
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
  "slug": "carries--08a344ce4b0292aa49fcc123",
  "source": {
    "blob": "4511ec66c97b4b8d13c705d50eb942dfad1a8cfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 816,
    "line": 806,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant38b519f57d1f874df8dd8e48aa7806bfc0d43139064305499a8e788cce146ce6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08a344ce4b0292aa49fcc123a9471b91ea234a13ce4a1c09c00b38e1bb3fb1d4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant38b519f57d1f874df8dd8e48aa7806bfc0d43139064305499a8e788cce146ce6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84b432d9afba64ac049b9e016f8d370d42fb5f0aa09a0af7ee91749f5d47fd87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 806–816.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Carries (Γ : List (Expr S)) (γ : Nat → Mode) (T : Expr S) (J : Set S) : Prop :=
  ∃ Δ δ, ∃ e : Embedding P Γ γ Δ δ, ProofContext Δ δ ∧ ∃ U : Expr S,
    U.Target ∧ WellModed δ U .data ∧ SortedAt P Δ U J ∧
    Transfer P Δ δ (T.rename e.names) U

namespace WitnessFamily
variable {Γ : List (Expr S)} {γ : Nat → Mode} (W : WitnessFamily P Γ γ)
    {T : Expr S} {I J : Set S}

include W in
open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Wrappers/Variant38b519f57d1f874df8dd8e48aa7806bfc0d43139064305499a8e788cce146ce6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Wrappers/Variant38b519f57d1f874df8dd8e48aa7806bfc0d43139064305499a8e788cce146ce6.lean#L806).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4511ec66c97b4b8d13c705d50eb942dfad1a8cfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
