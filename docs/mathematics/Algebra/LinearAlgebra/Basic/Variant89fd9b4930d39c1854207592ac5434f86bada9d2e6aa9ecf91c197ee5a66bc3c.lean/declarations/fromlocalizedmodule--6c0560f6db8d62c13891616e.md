# fromLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0374ff6ba72acfcf6a09c298d00a99dafcf35d5ea1faaf2487630058a060b6c",
  "kind": "def",
  "lexical_name": "fromLocalizedModule",
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
  "slug": "fromlocalizedmodule--6c0560f6db8d62c13891616e",
  "source": {
    "blob": "a70e5a646ccd82f36078fe09761a347b25f6bf92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 854,
    "line": 850,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant89fd9b4930d39c1854207592ac5434f86bada9d2e6aa9ecf91c197ee5a66bc3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c0560f6db8d62c13891616ecf6bbbfcd11ca6805543ff21634c62e63a732113",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant89fd9b4930d39c1854207592ac5434f86bada9d2e6aa9ecf91c197ee5a66bc3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0374ff6ba72acfcf6a09c298d00a99dafcf35d5ea1faaf2487630058a060b6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 850–854.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fromLocalizedModule : LocalizedModule S M →ₗ[R] M' where
  toFun := fromLocalizedModule' S f
  map_add' := fromLocalizedModule'_add S f
  map_smul' r x := by rw [fromLocalizedModule'_smul, RingHom.id_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant89fd9b4930d39c1854207592ac5434f86bada9d2e6aa9ecf91c197ee5a66bc3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant89fd9b4930d39c1854207592ac5434f86bada9d2e6aa9ecf91c197ee5a66bc3c.lean#L850).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a70e5a646ccd82f36078fe09761a347b25f6bf92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
