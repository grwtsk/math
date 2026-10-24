# truncRecEmptyOption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:524474546f6dc974634f25f823fccd012139ec2723a5034b8c4c9893f7467df1",
  "kind": "def",
  "lexical_name": "truncRecEmptyOption",
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
  "slug": "truncrecemptyoption--8c6fbbb3b68fd9b71234479e",
  "source": {
    "blob": "b5a92c8965571a98806ea62535ff5af4b2974fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c6fbbb3b68fd9b71234479e4a4c972999c2270a4d5051bea4930a480ec2db26",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Option/Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:524474546f6dc974634f25f823fccd012139ec2723a5034b8c4c9893f7467df1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def truncRecEmptyOption {P : Type u → Sort v} (of_equiv : ∀ {α β}, α ≃ β → P α → P β)
    (h_empty : P PEmpty) (h_option : ∀ {α} [Fintype α] [DecidableEq α], P α → P (Option α))
    (α : Type u) [Fintype α] [DecidableEq α] : Trunc (P α) := by
  suffices ∀ n : ℕ, Trunc (P (ULift <| Fin n)) by
    apply Trunc.bind (this (Fintype.card α))
    intro h
    apply Trunc.map _ (Fintype.truncEquivFin α)
    intro e
    exact of_equiv (Equiv.ulift.trans e.symm) h
  intro n
  induction n with
  | zero =>
    have : card PEmpty = card (ULift (Fin 0)) := by
      simp only [card_fin, card_pempty, card_ulift]
    apply Trunc.bind (truncEquivOfCardEq this)
    intro e
    apply Trunc.mk
    exact of_equiv e h_empty
  | succ n ih =>
    have : card (Option (ULift (Fin n))) = card (ULift (Fin n.succ)) := by
      simp only [card_fin, card_option, card_ulift]
    apply Trunc.bind (truncEquivOfCardEq this)
    intro e
    apply Trunc.map _ ih
    intro ih
    exact of_equiv e (h_option ih)

/-- An induction principle for finite types, analogous to `Nat.rec`. It effectively says
that every `Fintype` is either `Empty` or `Option α`, up to an `Equiv`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Option/Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5a92c8965571a98806ea62535ff5af4b2974fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
