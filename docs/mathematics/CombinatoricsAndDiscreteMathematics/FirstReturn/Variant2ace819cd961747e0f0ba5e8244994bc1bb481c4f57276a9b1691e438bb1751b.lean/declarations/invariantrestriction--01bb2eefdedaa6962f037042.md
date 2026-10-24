# invariantRestriction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88e7b0d143a9493cc66f9e756f6a9074f3ed7e8d65cebbc5c59f589569ba6911",
  "kind": "def",
  "lexical_name": "invariantRestriction",
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
  "slug": "invariantrestriction--01bb2eefdedaa6962f037042",
  "source": {
    "blob": "17db2565bdef52ae10964e870a60c8aedb5c7473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 268,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01bb2eefdedaa6962f0370424a899a11994be96a8d39533ae1398985f972e2a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88e7b0d143a9493cc66f9e756f6a9074f3ed7e8d65cebbc5c59f589569ba6911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invariantRestriction
    (P : Equiv.Perm α)
    (Valid : α → Prop)
    (hInvariant : ∀ x, Valid (P x) ↔ Valid x) :
    Equiv.Perm (ValidState Valid) where
  toFun x := ⟨P x.1, (hInvariant x.1).2 x.2⟩
  invFun x := ⟨P.symm x.1, by
    apply (hInvariant (P.symm x.1)).1
    simpa using x.2⟩
  left_inv x := by ext; simp
  right_inv x := by ext; simp

/-- On an invariant subset every first-return time is exactly one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FirstReturn/Variant2ace819cd961747e0f0ba5e8244994bc1bb481c4f57276a9b1691e438bb1751b.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17db2565bdef52ae10964e870a60c8aedb5c7473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
