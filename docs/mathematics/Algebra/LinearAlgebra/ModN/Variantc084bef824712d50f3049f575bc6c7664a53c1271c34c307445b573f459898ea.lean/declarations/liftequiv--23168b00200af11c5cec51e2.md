# liftEquiv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2fbf048b1346fb1a8a43b9ff759466193f50310ce8d89efdcf8053c21e7ccad",
  "kind": "def",
  "lexical_name": "liftEquiv'",
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
  "slug": "liftequiv--23168b00200af11c5cec51e2",
  "source": {
    "blob": "a4890d423fea7ba5259746d0a8ba4e5f50bb2f0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModN/Variantc084bef824712d50f3049f575bc6c7664a53c1271c34c307445b573f459898ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23168b00200af11c5cec51e2787e24928a491560134bb83c9d665b0ff461b47b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModN/Variantc084bef824712d50f3049f575bc6c7664a53c1271c34c307445b573f459898ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2fbf048b1346fb1a8a43b9ff759466193f50310ce8d89efdcf8053c21e7ccad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def liftEquiv' [AddCommGroup H] [Module (ZMod n) H] :
    (ModN G n →ₗ[ZMod n] H) ≃ {φ : G →+ H // ∀ g, n • φ g = 0} :=
  (AddMonoidHom.toZModLinearMapEquiv n).symm.toEquiv.trans ModN.liftEquiv

variable (n) in
/-- The quotient map `G → G / nG`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModN/Variantc084bef824712d50f3049f575bc6c7664a53c1271c34c307445b573f459898ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModN/Variantc084bef824712d50f3049f575bc6c7664a53c1271c34c307445b573f459898ea.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4890d423fea7ba5259746d0a8ba4e5f50bb2f0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
