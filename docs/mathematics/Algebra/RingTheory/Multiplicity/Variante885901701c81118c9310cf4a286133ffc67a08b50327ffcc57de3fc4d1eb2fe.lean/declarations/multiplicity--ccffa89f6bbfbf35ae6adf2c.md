# multiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ce7cdd1ff9b75f0b64f42ed980d4b8a2cadc422cc51aae9ca10e8328de76311",
  "kind": "def",
  "lexical_name": "multiplicity",
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
  "slug": "multiplicity--ccffa89f6bbfbf35ae6adf2c",
  "source": {
    "blob": "d319a66f624f21bcbd084d259349eee8de0b0975",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 56,
    "path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variante885901701c81118c9310cf4a286133ffc67a08b50327ffcc57de3fc4d1eb2fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccffa89f6bbfbf35ae6adf2c4935dea27e43f8a401473e2e55282ab3916ef643",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplicity/Variante885901701c81118c9310cf4a286133ffc67a08b50327ffcc57de3fc4d1eb2fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ce7cdd1ff9b75f0b64f42ed980d4b8a2cadc422cc51aae9ca10e8328de76311`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def multiplicity [Monoid α] (a b : α) : ℕ :=
  (emultiplicity a b).untopD 1

section Monoid

variable [Monoid α] [Monoid β] {a b : α}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplicity/Variante885901701c81118c9310cf4a286133ffc67a08b50327ffcc57de3fc4d1eb2fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplicity/Variante885901701c81118c9310cf4a286133ffc67a08b50327ffcc57de3fc4d1eb2fe.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d319a66f624f21bcbd084d259349eee8de0b0975` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
