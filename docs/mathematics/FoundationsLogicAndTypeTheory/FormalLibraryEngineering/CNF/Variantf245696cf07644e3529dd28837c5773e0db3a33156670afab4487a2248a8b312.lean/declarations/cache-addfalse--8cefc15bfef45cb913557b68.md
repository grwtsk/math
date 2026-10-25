# Cache.addFalse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c734989f324aa37c231476b2a0f29b9d896a2f15fed3a5d85644db2da6e20132",
  "kind": "def",
  "lexical_name": "Cache.addFalse",
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
  "slug": "cache-addfalse--8cefc15bfef45cb913557b68",
  "source": {
    "blob": "b0184a078c2239ae7e1588b9d627c3fe939fbc5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 267,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cefc15bfef45cb913557b68dae3de28906b2070dca4e99d9d75b28e81cc173b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c734989f324aa37c231476b2a0f29b9d896a2f15fed3a5d85644db2da6e20132`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cache.addFalse (cache : Cache aig cnf) (idx : Nat) (h : idx < aig.decls.size)
    (htip : aig.decls[idx]'h = .false) :
    {
      out : Cache aig (cnf ++ Decl.falseToCNF idx)
        //
      Cache.IsExtensionBy cache out idx h
    } :=
  have hmarkbound : idx < cache.marks.size := by have := cache.hmarks; omega
  let out :=
    { cache with
      marks := cache.marks.set idx true
      hmarks := by simp [cache.hmarks]
      inv := by
        intro assign heval idx hbound hmarked
        rw [Array.getElem_set] at hmarked
        split at hmarked
        next heq =>
          simp [heq] at htip heval
          simp [denote_idx_false htip, heval]
        next heq =>
          simp only [CNF.eval_append, Decl.falseToCNF_eval, Bool.and_eq_true, beq_iff_eq] at heval
          have := cache.inv assign heval.left idx hbound hmarked
          rw [this]
    }
  ⟨out, IsExtensionBy_set cache out idx hmarkbound (by simp [out])⟩

/--
Add a `Decl.atom` to a cache.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CNF/Variantf245696cf07644e3529dd28837c5773e0db3a33156670afab4487a2248a8b312.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0184a078c2239ae7e1588b9d627c3fe939fbc5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
