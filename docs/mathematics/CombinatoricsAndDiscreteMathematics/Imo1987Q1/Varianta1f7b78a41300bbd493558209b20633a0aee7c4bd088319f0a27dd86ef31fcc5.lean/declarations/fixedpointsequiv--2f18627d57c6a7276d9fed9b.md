# fixedPointsEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fdb68c11e93e4d26be41ed8dec85b3ee9dfc4c0c089b4f9e02c2cb6c4c24cb0",
  "kind": "def",
  "lexical_name": "fixedPointsEquiv",
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
  "slug": "fixedpointsequiv--2f18627d57c6a7276d9fed9b",
  "source": {
    "blob": "5108643d7a774d4a083c7c942a25c0977bbc4d9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f18627d57c6a7276d9fed9b2080b4985f4691e79e431c84a17ae1e6eec3f790",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fdb68c11e93e4d26be41ed8dec85b3ee9dfc4c0c089b4f9e02c2cb6c4c24cb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fixedPointsEquiv : { σx : α × Perm α // σx.2 σx.1 = σx.1 } ≃ Σ x : α, Perm ({x}ᶜ : Set α) :=
  calc
    { σx : α × Perm α // σx.2 σx.1 = σx.1 } ≃ Σ x : α, { σ : Perm α // σ x = x } :=
      setProdEquivSigma _
    _ ≃ Σ x : α, { σ : Perm α // ∀ y : ({x} : Set α), σ y = Equiv.refl (↥({x} : Set α)) y } :=
      (sigmaCongrRight fun x => Equiv.setCongr <| by simp only [SetCoe.forall]; dsimp; simp)
    _ ≃ Σ x : α, Perm ({x}ᶜ : Set α) := sigmaCongrRight fun x => by apply Equiv.Set.compl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1987Q1/Varianta1f7b78a41300bbd493558209b20633a0aee7c4bd088319f0a27dd86ef31fcc5.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5108643d7a774d4a083c7c942a25c0977bbc4d9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
