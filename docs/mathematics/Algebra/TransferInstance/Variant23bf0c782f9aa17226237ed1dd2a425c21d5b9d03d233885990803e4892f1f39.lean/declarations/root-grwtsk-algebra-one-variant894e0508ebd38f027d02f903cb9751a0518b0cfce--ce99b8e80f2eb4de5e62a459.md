# _root_.GRWTSK.Algebra.One.Variant894e0508ebd38f027d02f903cb9751a0518b0cfce5dd9c380eed59f5a5b834e0.Shrink.ringEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cb8a88a2b9843db9634b3fd6c480040ec36bcbb418880a71d06296b3ec35522",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.One.Variant894e0508ebd38f027d02f903cb9751a0518b0cfce5dd9c380eed59f5a5b834e0.Shrink.ringEquiv",
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
  "slug": "root-grwtsk-algebra-one-variant894e0508ebd38f027d02f903cb9751a0518b0cfce--ce99b8e80f2eb4de5e62a459",
  "source": {
    "blob": "cee8ee048be766898c8a5093ebf90a0e3a5e99ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 197,
    "path": "GRWTSK/Algebra/TransferInstance/Variant23bf0c782f9aa17226237ed1dd2a425c21d5b9d03d233885990803e4892f1f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce99b8e80f2eb4de5e62a459355180313285eaca569990b6f99a6b9bba43a764",
  "verification": {
    "reference": "docs/verification/Algebra/TransferInstance/Variant23bf0c782f9aa17226237ed1dd2a425c21d5b9d03d233885990803e4892f1f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cb8a88a2b9843db9634b3fd6c480040ec36bcbb418880a71d06296b3ec35522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.GRWTSK.Algebra.One.Variant894e0508ebd38f027d02f903cb9751a0518b0cfce5dd9c380eed59f5a5b834e0.Shrink.ringEquiv [Small.{v} α] [Add α] [Mul α] : Shrink.{v} α ≃+* α :=
  (equivShrink α).symm.ringEquiv

/-- Transfer `Semigroup` across an `Equiv` -/
@[to_additive "Transfer `add_semigroup` across an `Equiv`"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TransferInstance/Variant23bf0c782f9aa17226237ed1dd2a425c21d5b9d03d233885990803e4892f1f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TransferInstance/Variant23bf0c782f9aa17226237ed1dd2a425c21d5b9d03d233885990803e4892f1f39.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cee8ee048be766898c8a5093ebf90a0e3a5e99ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
