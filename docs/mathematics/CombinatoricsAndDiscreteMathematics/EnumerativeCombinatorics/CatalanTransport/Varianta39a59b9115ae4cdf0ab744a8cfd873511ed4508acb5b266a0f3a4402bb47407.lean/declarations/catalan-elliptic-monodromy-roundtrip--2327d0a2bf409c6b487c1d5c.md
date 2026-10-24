# catalan_elliptic_monodromy_roundtrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcbe9007-b793-b451-50e8-4afb75e35b51",
  "kind": "theorem",
  "lexical_name": "catalan_elliptic_monodromy_roundtrip",
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
  "slug": "catalan-elliptic-monodromy-roundtrip--2327d0a2bf409c6b487c1d5c",
  "source": {
    "blob": "274b9f769f4e2edc60b7284f4333cd2636b96e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2327d0a2bf409c6b487c1d5cef705ba57d3023ab8a0241b15ac2900f3b307ec4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcbe9007-b793-b451-50e8-4afb75e35b51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem catalan_elliptic_monodromy_roundtrip
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    (M : CatalanMonodromySystem k E G)
    {T U : Catalan.CTree}
    (p : Path M.expansion.Step T U)
    (P : Arithmetic.ECPoint E)
    (x : M.expansion.bundle.Fiber T) :
    (Fiber.transportPath M.expansion.transport p).symm
      ((M.torsionAction U).act (G.neg P)
        ((M.torsionAction U).act P
          (Fiber.transportPath M.expansion.transport p x)))
    = x := by
  rw [torsion_action_roundtrip]
  exact Equiv.symm_apply_apply _ x

end Monodromy
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CatalanTransport/Varianta39a59b9115ae4cdf0ab744a8cfd873511ed4508acb5b266a0f3a4402bb47407.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `274b9f769f4e2edc60b7284f4333cd2636b96e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
