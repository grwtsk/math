# find_congr'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f80a0a0-0b81-37ea-848a-8af2af082ca7",
  "kind": "lemma",
  "lexical_name": "find_congr'",
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
  "slug": "find-congr--00770ff8aa3648ffa5aa365a",
  "source": {
    "blob": "a72e04e46fb3a9d5e475c40f7bfd46fd86aa96b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00770ff8aa3648ffa5aa365a9fe539cf76fa919736ae3f47fea871e9f717a40c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f80a0a0-0b81-37ea-848a-8af2af082ca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma find_congr' [DecidablePred q] {hp : ∃ n, p n} {hq : ∃ n, q n} (hpq : ∀ {n}, p n ↔ q n) :
    Nat.find hp = Nat.find hq :=
  let ⟨_, hp⟩ := hp; find_congr hp fun _ _ ↦ hpq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Find/Varianta2cae95bcc21e116243bb0f2d1b957ec8a0c32893b9662bdf9a050105e556cf8.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a72e04e46fb3a9d5e475c40f7bfd46fd86aa96b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
