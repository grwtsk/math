# exists_left_complement'_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cad6b93d-20f3-0f07-f65f-4037cfd93e11",
  "kind": "theorem",
  "lexical_name": "exists_left_complement'_of_coprime",
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
  "slug": "exists-left-complement-of-coprime--dcfd7121fdc57632553976b6",
  "source": {
    "blob": "e3d76d5379263a76b6040b4707be7cd4d58e9b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 300,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcfd7121fdc57632553976b6948689840b1c996021e1beec534000d0c6ff3f2c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cad6b93d-20f3-0f07-f65f-4037cfd93e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_left_complement'_of_coprime {N : Subgroup G} [N.Normal]
    (hN : Nat.Coprime (Nat.card N) N.index) : ∃ H : Subgroup G, IsComplement' H N :=
  Exists.imp (fun _ => IsComplement'.symm) (exists_right_complement'_of_coprime hN)

end Subgroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variante658bbc21aecfa3ee463a65a67ff3bbae6ae57b9f743f1ef37582541ed428911.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3d76d5379263a76b6040b4707be7cd4d58e9b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
