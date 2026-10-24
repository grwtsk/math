# getElem_replace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ee39f1a-386a-4825-a6ed-3ad25cda4c2c",
  "kind": "theorem",
  "lexical_name": "getElem_replace",
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
  "slug": "getelem-replace--6bc7ba9e8f744de38ab2c882",
  "source": {
    "blob": "519a54b75079a3acb036a212f7303f8d497ecba1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3446,
    "line": 3441,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bc7ba9e8f744de38ab2c8823ead44e0783bfab09c8e0372a4981e3cc0432888",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ee39f1a-386a-4825-a6ed-3ad25cda4c2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3441–3446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[grind =] theorem getElem_replace [LawfulBEq α] {l : List α} {i : Nat} (h : i < l.length) :
    (l.replace a b)[i]'(by simpa) = if l[i] == a then if a ∈ l.take i then a else b else l[i] := by
  apply Option.some.inj
  rw [← getElem?_eq_getElem, getElem?_replace]
  split <;> split <;> simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant0724ebc7c72c87ad6d480dba407c43cc60393e7a0facfbaa6670045f66f636ac.lean#L3441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `519a54b75079a3acb036a212f7303f8d497ecba1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
