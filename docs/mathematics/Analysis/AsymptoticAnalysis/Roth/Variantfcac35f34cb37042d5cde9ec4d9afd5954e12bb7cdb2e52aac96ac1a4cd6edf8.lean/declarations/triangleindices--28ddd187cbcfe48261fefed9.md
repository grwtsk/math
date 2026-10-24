# triangleIndices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9457939b1c865b53cb0fc973f1d48eb6b46a502fe3e83c32579bc872aad4a031",
  "kind": "def",
  "lexical_name": "triangleIndices",
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
  "slug": "triangleindices--28ddd187cbcfe48261fefed9",
  "source": {
    "blob": "61b864640791ebb4661a1330ddc564dbb0df1380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 39,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28ddd187cbcfe48261fefed9eb9d8c522070b8e00936c8615061f4b65f86a449",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9457939b1c865b53cb0fc973f1d48eb6b46a502fe3e83c32579bc872aad4a031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def triangleIndices (A : Finset (G × G)) : Finset (G × G × G) :=
  A.map ⟨fun (a, b) ↦ (a, b, a + b), by rintro ⟨x₁, x₂⟩ ⟨y₁, y₂⟩ ⟨⟩; rfl⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Roth/Variantfcac35f34cb37042d5cde9ec4d9afd5954e12bb7cdb2e52aac96ac1a4cd6edf8.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61b864640791ebb4661a1330ddc564dbb0df1380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
