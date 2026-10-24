# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ReplayScope.Variant7a03562c54d380538161c1792c2e1f7f10478b5552163bec32048e32c68a0905

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f293b93a01b13ee17cd8669cc8f8b692bde6a56` · SHA-256 `7a03562c54d380538161c1792c2e1f7f10478b5552163bec32048e32c68a0905`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Certificates
import Geometry
namespace FormalResearch.MutationGame.IndependentReplay
open Matrix
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

theorem d4_graph_numbering : d4.adjacency = !![0,1,0,0; 1,0,1,1; 0,1,0,0; 0,1,0,0] := by decide +kernel

theorem e8_graph_numbering : e8.adjacency = !![0,1,0,0,0,0,0,0; 1,0,1,0,0,0,0,0; 0,1,0,1,0,0,0,1; 0,0,1,0,1,0,0,0; 0,0,0,1,0,1,0,0; 0,0,0,0,1,0,1,0; 0,0,0,0,0,1,0,0; 0,0,1,0,0,0,0,0] := by decide +kernel

theorem d4_geometry_link : d4.adjacency = Geometry.d4A ∧ d4Cartan = Geometry.d4C := by decide +kernel

theorem e8_geometry_link : e8.adjacency = Geometry.e8A ∧ e8Cartan = Geometry.e8C := by decide +kernel

theorem d4_seed_orbit_exact (x : Population 4) : Reachable d4.adjacency x ↔ ∃ s, d4.states s = x := d4_orbit_exact x

theorem e8_seed_orbit_exact (x : Population 8) : Reachable e8.adjacency x ↔ ∃ s, e8.states s = x := e8_orbit_exact x

theorem generated_root_counts : (Finset.univ.image d4.states).card = 24 ∧ (Finset.univ.image e8.states).card = 240 := ⟨d4_orbit_cardinality, e8_orbit_cardinality⟩

theorem generated_sign_counts : (Finset.univ.filter (fun s : Fin 24 => ∀ i, 0 ≤ d4.states s i)).card = 12 ∧ (Finset.univ.filter (fun s : Fin 24 => ∀ i, d4.states s i ≤ 0)).card = 12 ∧ (Finset.univ.filter (fun s : Fin 240 => ∀ i, 0 ≤ e8.states s i)).card = 120 ∧ (Finset.univ.filter (fun s : Fin 240 => ∀ i, e8.states s i ≤ 0)).card = 120 := ⟨d4_positive_count,d4_negative_count,e8_positive_count,e8_negative_count⟩
end FormalResearch.MutationGame.IndependentReplay
```
