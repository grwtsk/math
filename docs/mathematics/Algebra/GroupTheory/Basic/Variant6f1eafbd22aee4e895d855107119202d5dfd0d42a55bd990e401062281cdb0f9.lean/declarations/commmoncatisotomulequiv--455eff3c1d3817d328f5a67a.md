# commMonCatIsoToMulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c26c080a3c88671e101a8b1b45c2e8084a3b4e3b6ecc1b424bd480350f1cb147",
  "kind": "def",
  "lexical_name": "commMonCatIsoToMulEquiv",
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
  "slug": "commmoncatisotomulequiv--455eff3c1d3817d328f5a67a",
  "source": {
    "blob": "f44a57bb65e8815552ca5a07f155a430eaa536f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 447,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant6f1eafbd22aee4e895d855107119202d5dfd0d42a55bd990e401062281cdb0f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:455eff3c1d3817d328f5a67aa94c84c9d14d00671289b6375dce7812825f08d7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant6f1eafbd22aee4e895d855107119202d5dfd0d42a55bd990e401062281cdb0f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c26c080a3c88671e101a8b1b45c2e8084a3b4e3b6ecc1b424bd480350f1cb147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commMonCatIsoToMulEquiv {X Y : CommMonCat} (i : X ≅ Y) : X ≃* Y :=
  MonoidHom.toMulEquiv i.hom.hom i.inv.hom (by ext; simp) (by ext; simp)

end CategoryTheory.Iso

/-- multiplicative equivalences between `Monoid`s are the same as (isomorphic to) isomorphisms
in `MonCat` -/
@[to_additive addEquivIsoAddMonCatIso]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant6f1eafbd22aee4e895d855107119202d5dfd0d42a55bd990e401062281cdb0f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant6f1eafbd22aee4e895d855107119202d5dfd0d42a55bd990e401062281cdb0f9.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f44a57bb65e8815552ca5a07f155a430eaa536f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
