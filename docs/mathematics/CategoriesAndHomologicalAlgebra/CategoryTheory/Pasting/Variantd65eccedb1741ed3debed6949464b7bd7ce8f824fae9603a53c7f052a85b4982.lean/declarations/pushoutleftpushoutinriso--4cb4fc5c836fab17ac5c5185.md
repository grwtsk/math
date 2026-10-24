# pushoutLeftPushoutInrIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff3621e7afad7721eb9b596acce3fb64ae83b3002b16fdd86f5e7cc5a9dbf25b",
  "kind": "def",
  "lexical_name": "pushoutLeftPushoutInrIso",
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
  "slug": "pushoutleftpushoutinriso--4cb4fc5c836fab17ac5c5185",
  "source": {
    "blob": "6790398f308afac9f4b482be7aad4c8f1e5e512d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 576,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cb4fc5c836fab17ac5c5185de43b09409b8ad716da27d52c03aaa60f43b0cda",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff3621e7afad7721eb9b596acce3fb64ae83b3002b16fdd86f5e7cc5a9dbf25b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 576–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pushoutLeftPushoutInrIso :
    pushout (pushout.inr f g) g' ≅ pushout f (g ≫ g') :=
  IsColimit.coconePointUniqueUpToIso
    (pasteHorizIsPushout rfl (pushout.isColimit f g) (pushout.isColimit (pushout.inr f g) g'))
    (pushout.isColimit f (g ≫ g'))

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean#L576).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6790398f308afac9f4b482be7aad4c8f1e5e512d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
