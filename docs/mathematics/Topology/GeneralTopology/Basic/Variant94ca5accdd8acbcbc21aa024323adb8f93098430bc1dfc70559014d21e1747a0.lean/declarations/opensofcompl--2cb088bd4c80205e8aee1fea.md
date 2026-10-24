# opensOfCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfea67ab76cc9e0f032e35861add3efa5809b515269ad8b03f7e0878b93fffff",
  "kind": "def",
  "lexical_name": "opensOfCompl",
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
  "slug": "opensofcompl--2cb088bd4c80205e8aee1fea",
  "source": {
    "blob": "c98464f3146096cd3f74246727d43ec2e08b20cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 258,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cb088bd4c80205e8aee1feae8bbfa6ed7e9ac9edca32251048fd98379f20425",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfea67ab76cc9e0f032e35861add3efa5809b515269ad8b03f7e0878b93fffff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def opensOfCompl (s : Set X) (h₁ : IsClosed s) (h₂ : IsCompact s) :
    TopologicalSpace.Opens (OnePoint X) :=
  ⟨((↑) '' s)ᶜ, isOpen_compl_image_coe.2 ⟨h₁, h₂⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c98464f3146096cd3f74246727d43ec2e08b20cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
