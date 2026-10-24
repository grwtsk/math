# emod_lt_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab6ae9d9-d362-d7fe-8379-9f9f9c0748b5",
  "kind": "theorem",
  "lexical_name": "emod_lt_of_pos",
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
  "slug": "emod-lt-of-pos--708aa29bf2c9a7a089baecc5",
  "source": {
    "blob": "10ec419a70918f09b6e3e377aa10ad43f0bd4406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 399,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variante1a2f0c4d8855f6db5ebb37be215149a5bbdb5dc3ed0461cd2869a2fbdc074cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:708aa29bf2c9a7a089baecc5b5c7ed1f34cf1c64184bbc6406f0694dbe06eac1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variante1a2f0c4d8855f6db5ebb37be215149a5bbdb5dc3ed0461cd2869a2fbdc074cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab6ae9d9-d362-d7fe-8379-9f9f9c0748b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emod_lt_of_pos (a : Int) {b : Int} (H : 0 < b) : a % b < b :=
  match a, b, eq_succ_of_zero_lt H with
  | ofNat _, _, ⟨_, rfl⟩ => ofNat_lt.2 (Nat.mod_lt _ (Nat.succ_pos _))
  | -[_+1], _, ⟨_, rfl⟩ => Int.sub_lt_self _ (ofNat_lt.2 <| Nat.succ_pos _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variante1a2f0c4d8855f6db5ebb37be215149a5bbdb5dc3ed0461cd2869a2fbdc074cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variante1a2f0c4d8855f6db5ebb37be215149a5bbdb5dc3ed0461cd2869a2fbdc074cb.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10ec419a70918f09b6e3e377aa10ad43f0bd4406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
