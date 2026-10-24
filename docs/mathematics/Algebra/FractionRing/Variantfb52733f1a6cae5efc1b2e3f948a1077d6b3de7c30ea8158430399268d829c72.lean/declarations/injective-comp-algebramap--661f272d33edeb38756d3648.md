# injective_comp_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb4a4e4e-9da1-a562-d07a-76ff69dfa496",
  "kind": "theorem",
  "lexical_name": "injective_comp_algebraMap",
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
  "slug": "injective-comp-algebramap--661f272d33edeb38756d3648",
  "source": {
    "blob": "29c65eee57715228326981f87ce8633e774e94c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 262,
    "path": "GRWTSK/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:661f272d33edeb38756d3648cc4d44fbccb5267710973bea8fe39bb6def775f9",
  "verification": {
    "reference": "docs/verification/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb4a4e4e-9da1-a562-d07a-76ff69dfa496`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_comp_algebraMap :
    Function.Injective fun (f : K →+* L) => f.comp (algebraMap A K) :=
  fun _ _ h => ringHom_ext (fun x => RingHom.congr_fun h x)

section liftAlgHom

variable [Algebra R A] [Algebra R K] [IsScalarTower R A K] [Algebra R L]
  {g : A →ₐ[R] L} (hg : Injective g) (x : K)
include hg

/-- `AlgHom` version of `IsFractionRing.lift`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FractionRing/Variantfb52733f1a6cae5efc1b2e3f948a1077d6b3de7c30ea8158430399268d829c72.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29c65eee57715228326981f87ce8633e774e94c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
