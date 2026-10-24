# emultiplicity_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b2a4b74-8c63-d384-625c-4b334a441109",
  "kind": "theorem",
  "lexical_name": "emultiplicity_mul",
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
  "slug": "emultiplicity-mul--2b2ffd5ee1ea475b441d05c1",
  "source": {
    "blob": "d319a66f624f21bcbd084d259349eee8de0b0975",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 832,
    "line": 822,
    "path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variante885901701c81118c9310cf4a286133ffc67a08b50327ffcc57de3fc4d1eb2fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b2ffd5ee1ea475b441d05c1cbe64f5b320d5718aadb136dd468aefbf362a0d5",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplicity/Variante885901701c81118c9310cf4a286133ffc67a08b50327ffcc57de3fc4d1eb2fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b2a4b74-8c63-d384-625c-4b334a441109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 822–832.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_mul {p a b : α} (hp : Prime p) :
    emultiplicity p (a * b) = emultiplicity p a + emultiplicity p b := by
  by_cases hfin : FiniteMultiplicity p (a * b)
  · rw [hfin.emultiplicity_eq_multiplicity, hfin.mul_left.emultiplicity_eq_multiplicity,
      hfin.mul_right.emultiplicity_eq_multiplicity]
    norm_cast
    exact multiplicity_mul hp hfin
  · rw [emultiplicity_eq_top.2 hfin, eq_comm, WithTop.add_eq_top, emultiplicity_eq_top,
      emultiplicity_eq_top]
    simpa only [FiniteMultiplicity.mul_iff hp, not_and_or] using hfin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplicity/Variante885901701c81118c9310cf4a286133ffc67a08b50327ffcc57de3fc4d1eb2fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplicity/Variante885901701c81118c9310cf4a286133ffc67a08b50327ffcc57de3fc4d1eb2fe.lean#L822).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d319a66f624f21bcbd084d259349eee8de0b0975` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
