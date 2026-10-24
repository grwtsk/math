# DMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c0d440f604318ce9c1ec90ac7afd97fa67f0d30f1d7c852b1db62e8ab1956ad",
  "kind": "def",
  "lexical_name": "DMatrix",
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
  "slug": "dmatrix--757353f1eebefdb1b6e36de2",
  "source": {
    "blob": "8137a0d5902fa040ddcea4984554feedc8a101cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 21,
    "path": "GRWTSK/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:757353f1eebefdb1b6e36de2e37eac195f68a685724abe76829a7f5797331722",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c0d440f604318ce9c1ec90ac7afd97fa67f0d30f1d7c852b1db62e8ab1956ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def DMatrix (m : Type u) (n : Type u') (α : m → n → Type v) : Type max u u' v :=
  ∀ i j, α i j

variable {m n : Type*}
variable {α : m → n → Type v}

namespace DMatrix

section Ext

variable {M N : DMatrix m n α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/DMatrix/Variantf70e3525bd886b0474d78b1337f4a97084769ba6b28cbc01ee41769e7a4f3bed.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8137a0d5902fa040ddcea4984554feedc8a101cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
