# reencodeBody

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f51182e963b6a8145149b44e25a12d4b39e1ecbbe9ae8bc6a985a19c9b89871",
  "kind": "def",
  "lexical_name": "reencodeBody",
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
  "slug": "reencodebody--9d40982144bb27de73f816aa",
  "source": {
    "blob": "337d2bd2599ed392d14954020c2faeca06f17926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1837,
    "line": 1835,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d40982144bb27de73f816aae01737ef4c6dfdb4728ae12d5c66bda1a287124d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f51182e963b6a8145149b44e25a12d4b39e1ecbbe9ae8bc6a985a19c9b89871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1835–1837.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reencodeBody (R R' : DataWrapper S true) (T : Expr S) : Expr S :=
  reencode (R.rename Nat.succ) (R'.rename Nat.succ) (T.rename Nat.succ) (.var 0)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean#L1835).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `337d2bd2599ed392d14954020c2faeca06f17926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
