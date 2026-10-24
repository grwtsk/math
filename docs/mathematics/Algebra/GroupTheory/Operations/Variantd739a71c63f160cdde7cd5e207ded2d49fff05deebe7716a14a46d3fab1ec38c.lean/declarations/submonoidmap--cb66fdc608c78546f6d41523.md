# submonoidMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0625b91ed9eac05d7c26091b044d7a7d0a3b7ee1b01bfcc088f80acd3644d58",
  "kind": "def",
  "lexical_name": "submonoidMap",
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
  "slug": "submonoidmap--cb66fdc608c78546f6d41523",
  "source": {
    "blob": "14a7258d37edd4a861952d8497629bf826588ad3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 853,
    "line": 848,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variantd739a71c63f160cdde7cd5e207ded2d49fff05deebe7716a14a46d3fab1ec38c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb66fdc608c78546f6d415238bf3c5dbfeea7e1334380482514a882cf9aae934",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variantd739a71c63f160cdde7cd5e207ded2d49fff05deebe7716a14a46d3fab1ec38c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0625b91ed9eac05d7c26091b044d7a7d0a3b7ee1b01bfcc088f80acd3644d58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 848–853.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def submonoidMap (f : M →* N) (M' : Submonoid M) : M' →* M'.map f where
  toFun x := ⟨f x, ⟨x, x.2, rfl⟩⟩
  map_one' := Subtype.eq <| f.map_one
  map_mul' x y := Subtype.eq <| f.map_mul x y

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variantd739a71c63f160cdde7cd5e207ded2d49fff05deebe7716a14a46d3fab1ec38c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variantd739a71c63f160cdde7cd5e207ded2d49fff05deebe7716a14a46d3fab1ec38c.lean#L848).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14a7258d37edd4a861952d8497629bf826588ad3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
