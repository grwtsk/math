# fibers_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:695ef664-ff67-a307-4683-58a79725eecb",
  "kind": "theorem",
  "lexical_name": "fibers_eq",
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
  "slug": "fibers-eq--4ebd4f53139f9f2f6c3967de",
  "source": {
    "blob": "5bfe6cad9a8c758eabcd970b3091ffea72fa6e57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 787,
    "line": 761,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant91686b4d3ddef603d16318948e3460f621a56ae1549650341920caaecc67f0a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ebd4f53139f9f2f6c3967deb15e8d9e7d0836d1ae52ada9bfd758a520a20b3b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant91686b4d3ddef603d16318948e3460f621a56ae1549650341920caaecc67f0a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:695ef664-ff67-a307-4683-58a79725eecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 761–787.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fibers_eq {t t' : ProductInstance (hw := hw) Ω C hno}
    (hD : t.domainNF = t'.domainNF) (hE : t.bodyNF = t'.bodyNF)
    (b : t.BodyReads) (b' : t'.BodyReads)
    (hb : ∀ n hn p hp, Ω.profile (t.targetNF n) ∈ C →
        (b n hn p hp).val = (b' n (hD ▸ hn) p (hD ▸ hp)).val) :
    t.fibers b = t'.fibers b' := by
  funext n
  unfold fibers
  by_cases hn : Ω.HasType n t.domainNF
  · have hn' : Ω.HasType n t'.domainNF := hD ▸ hn
    rw [dif_pos hn,dif_pos hn']
    have ht := targetNF_eq hD hE hn
    by_cases hc : Ω.profile (t.targetNF n) ∈ C
    · have hc' : Ω.profile (t'.targetNF n) ∈ C := ht ▸ hc
      rw [if_pos hc,if_pos hc']
      ext U
      constructor
      · rintro ⟨p,hp,rfl⟩
        exact ⟨p,hD ▸ hp,hb n hn p hp hc⟩
      · rintro ⟨p,hp,rfl⟩
        exact ⟨p,hD.symm ▸ hp,(hb n hn p (hD.symm ▸ hp) hc).symm⟩
    · have hc' : Ω.profile (t'.targetNF n) ∉ C := ht ▸ hc
      rw [if_neg hc,if_neg hc',ht]
  · have hn' : ¬ Ω.HasType n t'.domainNF := hD ▸ hn
    rw [dif_neg hn,dif_neg hn']

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant91686b4d3ddef603d16318948e3460f621a56ae1549650341920caaecc67f0a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant91686b4d3ddef603d16318948e3460f621a56ae1549650341920caaecc67f0a8.lean#L761).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bfe6cad9a8c758eabcd970b3091ffea72fa6e57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
