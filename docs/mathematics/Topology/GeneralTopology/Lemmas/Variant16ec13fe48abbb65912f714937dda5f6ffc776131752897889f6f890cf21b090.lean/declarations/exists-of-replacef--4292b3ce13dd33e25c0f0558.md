# exists_of_replaceF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cac2fa5d804016e25f6084d0a442c77d3156de84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3b41b03-9ba7-6b74-a370-3b1a694af40a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:521d2591-ed18-5f31-26e8-07726a546928",
  "kind": "theorem",
  "lexical_name": "exists_of_replaceF",
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
  "slug": "exists-of-replacef--4292b3ce13dd33e25c0f0558",
  "source": {
    "blob": "cac2fa5d804016e25f6084d0a442c77d3156de84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 123,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4292b3ce13dd33e25c0f055865063267da48b82c148c342a8babbd92f52c7233",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:521d2591-ed18-5f31-26e8-07726a546928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_replaceF : ∀ {l : List α} {a a'} (_ : a ∈ l) (_ : p a = some a'),
    ∃ a a' l₁ l₂,
      (∀ b ∈ l₁, p b = none) ∧ p a = some a' ∧ l = l₁ ++ a :: l₂ ∧ l.replaceF p = l₁ ++ a' :: l₂
  | b :: l, _, _, al, pa =>
    match pb : p b with
    | some b' => ⟨b, b', [], l, forall_mem_nil _, pb, by simp [pb]⟩
    | none =>
      match al with
      | .head .. => nomatch pb.symm.trans pa
      | .tail _ al =>
        let ⟨c, c', l₁, l₂, h₁, h₂, h₃, h₄⟩ := exists_of_replaceF al pa
        ⟨c, c', b::l₁, l₂, (forall_mem_cons ..).2 ⟨pb, h₁⟩,
          h₂, by rw [h₃, cons_append], by simp [pb, h₄]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant16ec13fe48abbb65912f714937dda5f6ffc776131752897889f6f890cf21b090.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cac2fa5d804016e25f6084d0a442c77d3156de84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
