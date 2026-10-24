# pairwise_coprime_fermatNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54abadb3-4435-e336-2054-12096d047de8",
  "kind": "lemma",
  "lexical_name": "pairwise_coprime_fermatNumber",
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
  "slug": "pairwise-coprime-fermatnumber--c76833ba7d39c68e786028d5",
  "source": {
    "blob": "0a4cc10eaec9d5557201350faaf5ce9cbc315c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 122,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c76833ba7d39c68e786028d562c5c5d4ed16287e0cb4b603fb4e87285428eb41",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54abadb3-4435-e336-2054-12096d047de8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairwise_coprime_fermatNumber :
    Pairwise fun m n ↦ Coprime (fermatNumber m) (fermatNumber n) :=
  fun _m _n ↦ coprime_fermatNumber_fermatNumber

open ZMod

/-- Prime `a ^ n + 1` implies `n` is a power of two (**Fermat primes**). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4cc10eaec9d5557201350faaf5ce9cbc315c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
