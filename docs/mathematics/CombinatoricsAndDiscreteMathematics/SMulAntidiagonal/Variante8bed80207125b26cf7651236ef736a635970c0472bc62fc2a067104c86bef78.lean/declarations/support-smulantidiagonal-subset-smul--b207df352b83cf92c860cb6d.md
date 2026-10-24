# support_smulAntidiagonal_subset_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9a8ab59-558c-e7ad-625f-3306241f2b90",
  "kind": "theorem",
  "lexical_name": "support_smulAntidiagonal_subset_smul",
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
  "slug": "support-smulantidiagonal-subset-smul--b207df352b83cf92c860cb6d",
  "source": {
    "blob": "fb4ad3425170a7e4416bcd8d0fc4d0dfd92559cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b207df352b83cf92c860cb6d3a75e8f9015efbe13e37ce184f1bcb3f517f4429",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9a8ab59-558c-e7ad-625f-3306241f2b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_smulAntidiagonal_subset_smul {hs : s.IsPWO} {ht : t.IsPWO} :
    { a | (SMulAntidiagonal hs ht a).Nonempty } ⊆ (s • t) :=
  fun a ⟨b, hb⟩ => by
  rw [mem_smulAntidiagonal] at hb
  rw [Set.mem_smul]
  use b.1
  refine { left := hb.1, right := ?_ }
  use b.2
  exact { left := hb.2.1, right := hb.2.2 }

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variante8bed80207125b26cf7651236ef736a635970c0472bc62fc2a067104c86bef78.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb4ad3425170a7e4416bcd8d0fc4d0dfd92559cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
