# IsPGroup.exists_le_sylow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3d3582c5d4b73803bd00c4bc3ddfe98f0eaedb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:847462ca-b514-24c7-caec-613c5dab15ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f96abf83-cf99-b854-a0e1-4b6d866c5192",
  "kind": "theorem",
  "lexical_name": "IsPGroup.exists_le_sylow",
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
  "slug": "ispgroup-exists-le-sylow--d446b2e0b3b311391a90675a",
  "source": {
    "blob": "f3d3582c5d4b73803bd00c4bc3ddfe98f0eaedb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 153,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d446b2e0b3b311391a90675ae3904f0d9f9993ae11a28841f0f649d50bda7f30",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f96abf83-cf99-b854-a0e1-4b6d866c5192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPGroup.exists_le_sylow {P : Subgroup G} (hP : IsPGroup p P) : ∃ Q : Sylow p G, P ≤ Q :=
  Exists.elim
    (zorn_le_nonempty₀ { Q : Subgroup G | IsPGroup p Q }
      (fun c hc1 hc2 Q hQ =>
        ⟨{  carrier := ⋃ R : c, R
            one_mem' := ⟨Q, ⟨⟨Q, hQ⟩, rfl⟩, Q.one_mem⟩
            inv_mem' := fun {_} ⟨_, ⟨R, rfl⟩, hg⟩ => ⟨R, ⟨R, rfl⟩, R.1.inv_mem hg⟩
            mul_mem' := fun {_} _ ⟨_, ⟨R, rfl⟩, hg⟩ ⟨_, ⟨S, rfl⟩, hh⟩ =>
              (hc2.total R.2 S.2).elim (fun T => ⟨S, ⟨S, rfl⟩, S.1.mul_mem (T hg) hh⟩) fun T =>
                ⟨R, ⟨R, rfl⟩, R.1.mul_mem hg (T hh)⟩ },
          fun ⟨g, _, ⟨S, rfl⟩, hg⟩ => by
          refine Exists.imp (fun k hk => ?_) (hc1 S.2 ⟨g, hg⟩)
          rwa [Subtype.ext_iff, coe_pow] at hk ⊢, fun M hM _ hg => ⟨M, ⟨⟨M, hM⟩, rfl⟩, hg⟩⟩)
      P hP)
    fun {Q} h => ⟨⟨Q, h.2.prop, h.2.eq_of_ge⟩, h.1⟩

namespace Sylow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3d3582c5d4b73803bd00c4bc3ddfe98f0eaedb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
