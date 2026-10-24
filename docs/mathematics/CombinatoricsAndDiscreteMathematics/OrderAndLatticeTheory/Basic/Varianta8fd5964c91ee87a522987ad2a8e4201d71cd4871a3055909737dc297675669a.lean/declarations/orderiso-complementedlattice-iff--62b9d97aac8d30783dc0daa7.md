# OrderIso.complementedLattice_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad8021f5-13dd-d330-7f29-55a1caf84655",
  "kind": "theorem",
  "lexical_name": "OrderIso.complementedLattice_iff",
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
  "slug": "orderiso-complementedlattice-iff--62b9d97aac8d30783dc0daa7",
  "source": {
    "blob": "5415f4a52dee6230b684f239cba5cd25e76c7ace",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1318,
    "line": 1307,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta8fd5964c91ee87a522987ad2a8e4201d71cd4871a3055909737dc297675669a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62b9d97aac8d30783dc0daa7cb414161f4892d057838a28732b39ee67c41c6aa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta8fd5964c91ee87a522987ad2a8e4201d71cd4871a3055909737dc297675669a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad8021f5-13dd-d330-7f29-55a1caf84655`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1307–1318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrderIso.complementedLattice_iff (f : α ≃o β) :
    ComplementedLattice α ↔ ComplementedLattice β :=
  ⟨by intro; exact f.complementedLattice,
   by intro; exact f.symm.complementedLattice⟩

end BoundedOrder

end LatticeIsos

section DenselyOrdered

-- could live in a more upstream file, but hard to find a good place
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta8fd5964c91ee87a522987ad2a8e4201d71cd4871a3055909737dc297675669a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Varianta8fd5964c91ee87a522987ad2a8e4201d71cd4871a3055909737dc297675669a.lean#L1307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5415f4a52dee6230b684f239cba5cd25e76c7ace` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
