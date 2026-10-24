# val_find

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40cdaa02-bd48-dfe1-4548-45ddcd2c8763",
  "kind": "theorem",
  "lexical_name": "val_find",
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
  "slug": "val-find--a386a8db1f051eb4be798604",
  "source": {
    "blob": "f8e433ba754124d444045689d475ada8fa646415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1153,
    "line": 1149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant993afe9c579565b4e01ffc77a502d391237ec7a08f9e602ac384a940aedb6eaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a386a8db1f051eb4be7986040fa642361a1d2151361058281643c075646f008e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant993afe9c579565b4e01ffc77a502d391237ec7a08f9e602ac384a940aedb6eaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40cdaa02-bd48-dfe1-4548-45ddcd2c8763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1149–1153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem val_find (h : ∃ k, p k) :
    (Fin.find p h).val = Nat.find ((Fin.exists_iff.mp h)) :=
  ((Nat.find_eq_iff _).mpr ⟨⟨is_lt _, Fin.find_spec _⟩,
    fun _ hm ⟨_, hi⟩ => Fin.find_min h hm hi⟩).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant993afe9c579565b4e01ffc77a502d391237ec7a08f9e602ac384a940aedb6eaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant993afe9c579565b4e01ffc77a502d391237ec7a08f9e602ac384a940aedb6eaf.lean#L1149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8e433ba754124d444045689d475ada8fa646415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
